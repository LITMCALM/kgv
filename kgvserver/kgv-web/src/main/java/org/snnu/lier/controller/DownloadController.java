package org.snnu.lier.controller;

import cn.hutool.core.date.DateTime;
import lombok.extern.slf4j.Slf4j;
import org.snnu.lier.common.utils.UniqueIdUtil;
import org.snnu.lier.model.amqp.DownloadRequestLog;
import org.snnu.lier.model.constant.DownloadConstants;
import org.snnu.lier.model.amqp.DownloadRequest;

import org.snnu.lier.service.DownloadRequestLogService;
import org.snnu.lier.service.DownloadRequestService;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Slf4j(topic="download-controller")
@RestController
public class DownloadController {

    public static final int DOWNLOAD_STATUS_NOT_COMPLETE = 0;
    public static final int DOWNLOAD_STATUS_COMPLETE = 1;




    @Resource
    RabbitTemplate rabbitTemplate;

    @Resource
    DownloadRequestService downloadRequestService;
    @Resource
    DownloadRequestLogService downloadRequestLogService;

    @RequestMapping("/download")
    public void downloadController(HttpServletRequest request, HttpServletResponse response) {

        log.info("下载请求");
        HttpSession session = request.getSession();
        DownloadRequest downloadRequest = new DownloadRequest();
        String uuid = UniqueIdUtil.getUniqueId();
        downloadRequest.setId(uuid);

        downloadRequest.setDateTime(new DateTime(System.currentTimeMillis()));
        Object userId = session.getAttribute("user_id");
        if(userId!=null){
            log.info(userId.toString());
            downloadRequest.setUserId((Long)session.getAttribute("user_id"));
        }
        downloadRequest.setUsername((String) session.getAttribute("username"));
        downloadRequest.setType("file");
        downloadRequest.setQueryPath(request.getContextPath());
        downloadRequest.setStatus(DOWNLOAD_STATUS_NOT_COMPLETE);

        downloadRequestService.insertOne(downloadRequest);

        DownloadRequestLog downloadRequestLog = new DownloadRequestLog();
        String log_uuid = UniqueIdUtil.getUniqueId();
        downloadRequestLog.setId(log_uuid);
        downloadRequestLog.setDownloadRequestId(uuid);
        downloadRequestLog.setStatus(0);
        downloadRequestLog.setRouteKey(DownloadConstants.DOWNLOAD_ROUTING_KEY_NAME);
        downloadRequestLog.setExchange(DownloadConstants.DOWNLOAD_EXCHANGE_NAME);
        downloadRequestLog.setCount(0);
        downloadRequestLog.setTryTime(new Date(System.currentTimeMillis() + 1000L * 60 * DownloadConstants.MSG_TIMEOUT));
        downloadRequestLog.setCreateTime(new DateTime(System.currentTimeMillis()));
        downloadRequestLog.setDirection(DownloadConstants.MSG_KGV_TO_FS);
        downloadRequestLogService.insertOne(downloadRequestLog);

        rabbitTemplate.convertAndSend(DownloadConstants.DOWNLOAD_EXCHANGE_NAME, DownloadConstants.DOWNLOAD_ROUTING_KEY_NAME, downloadRequest, new CorrelationData(log_uuid));
    }
}
