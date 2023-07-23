package org.snnu.lier.task;


import cn.hutool.core.date.DateTime;
import lombok.extern.slf4j.Slf4j;
import org.snnu.lier.common.aop.CheckTab;
import org.snnu.lier.model.amqp.DownloadRequest;
import org.snnu.lier.model.amqp.DownloadRequestLog;
import org.snnu.lier.model.constant.DownloadConstants;
import org.snnu.lier.model.constant.TableConst;
import org.snnu.lier.service.DownloadRequestLogService;
import org.snnu.lier.service.DownloadRequestService;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Slf4j(topic = "download-task")
@Component
public class DownLoadTask {
    @Autowired
    DownloadRequestLogService downloadRequestLogService;
    @Autowired
    RabbitTemplate rabbitTemplate;
    @Autowired
    DownloadRequestService downloadRequestService;

    @CheckTab(tableName = TableConst.DOWNLOAD_REQUEST_LOG)
    @Scheduled(cron = "0/30 * * * * ?")
    public void downloadResendTask() {
        Long start = System.currentTimeMillis();
//        log.info("开始定时任务...");
        List<DownloadRequestLog> logs = downloadRequestLogService.selectByStatus(0);
        if (logs == null || logs.size() == 0) {

        } else {
            logs.forEach(downloadRequestLog -> {
                if (downloadRequestLog.getCount() >= 3) {
                    downloadRequestLog.setStatus(2);
                    downloadRequestLogService.updateById(downloadRequestLog);//直接设置该条消息发送失败
                } else {
                    downloadRequestLog.setCount(downloadRequestLog.getCount() + 1);
                    downloadRequestLog.setUpdateTime(new DateTime());
                    downloadRequestLogService.updateCountById(downloadRequestLog);
                    DownloadRequest downloadRequest = downloadRequestService.selectOneById(downloadRequestLog.getDownloadRequestId());
                    rabbitTemplate.convertAndSend(downloadRequestLog.getExchange(), downloadRequestLog.getRouteKey(), downloadRequest, new CorrelationData(downloadRequest.getId()));
                }
            });
        }
//        log.info("结束定时任务...");
        Long end = System.currentTimeMillis();
//        log.info("用时：" + (end - start) / 1000 + "s");
    }
}
