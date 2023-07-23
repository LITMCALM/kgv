package org.snnu.lier.receiver;

import cn.hutool.core.date.DateTime;
import com.rabbitmq.client.Channel;
import lombok.extern.slf4j.Slf4j;
import org.snnu.lier.common.utils.UniqueIdUtil;
import org.snnu.lier.model.amqp.DownloadRequestLog;
import org.snnu.lier.model.constant.DownloadConstants;
import org.snnu.lier.model.amqp.DownloadRequest;
import org.snnu.lier.model.constant.RedisHashNameConstants;
import org.snnu.lier.service.DownloadRequestLogService;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.support.AmqpHeaders;

import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageHeaders;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.Date;

@Slf4j(topic = "download-receiver")
@Component
public class DownloadReceiver {

    @Resource
    StringRedisTemplate redisTemplate;

    @Resource
    RabbitTemplate rabbitTemplate;

    @Resource
    DownloadRequestLogService downloadRequestLogService;

    @RabbitListener(queues = DownloadConstants.DOWNLOAD_QUEUE_NAME)
    public void handler(Message message, Channel channel) throws IOException {
        DownloadRequest downloadRequest = (DownloadRequest) message.getPayload();
        MessageHeaders headers = message.getHeaders();
        Long tag = (Long) headers.get(AmqpHeaders.DELIVERY_TAG);
        String msgId = headers.getId().toString();

        log.info(msgId);

        if (redisTemplate.opsForHash().entries(RedisHashNameConstants.DOWNLOAD_LOG_HASH_NAME).containsKey(msgId)) {
            log.info(msgId + ":该消息已经被消费");
            channel.basicAck(tag, false);
            return;
        }
        try {
            log.info("开始下载......");
            log.info(downloadRequest.toString());
            redisTemplate.opsForHash().put(RedisHashNameConstants.DOWNLOAD_LOG_HASH_NAME, msgId, "lier");
            channel.basicAck(tag, false);

            downloadRequest.setStatus(1);


            DownloadRequestLog downloadRequestLog = new DownloadRequestLog();
            String log_uuid = UniqueIdUtil.getUniqueId();
            downloadRequestLog.setId(log_uuid);
            downloadRequestLog.setDownloadRequestId(downloadRequest.getId());
            downloadRequestLog.setStatus(0);
            downloadRequestLog.setRouteKey(DownloadConstants.DOWNLOAD_COMPLETE_ROUTING_KEY_NAME);
            downloadRequestLog.setExchange(DownloadConstants.DOWNLOAD_COMPLETE_EXCHANGE_NAME);
            downloadRequestLog.setCount(0);
            downloadRequestLog.setTryTime(new Date(System.currentTimeMillis() + 1000L * 60 * DownloadConstants.MSG_TIMEOUT));
            downloadRequestLog.setCreateTime(new DateTime(System.currentTimeMillis()));
            downloadRequestLog.setDirection(DownloadConstants.MSG_FS_TO_KGV);
            downloadRequestLogService.insertOne(downloadRequestLog);

            rabbitTemplate.convertAndSend(DownloadConstants.DOWNLOAD_COMPLETE_EXCHANGE_NAME,DownloadConstants.DOWNLOAD_COMPLETE_ROUTING_KEY_NAME,downloadRequest,new CorrelationData(log_uuid));
            log.info("下载成功");
        } catch (MessagingException e) {

            channel.basicNack(tag, false, true);
            e.printStackTrace();
            log.info("下载失败");
        }
    }
}
