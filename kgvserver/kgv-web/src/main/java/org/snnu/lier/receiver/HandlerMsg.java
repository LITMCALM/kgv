package org.snnu.lier.receiver;


import cn.hutool.core.date.DateTime;
import com.rabbitmq.client.AMQP;
import com.rabbitmq.client.Channel;
import lombok.extern.slf4j.Slf4j;
import org.snnu.lier.model.amqp.DownloadRequest;
import org.snnu.lier.model.constant.DownloadConstants;
import org.snnu.lier.model.constant.RedisHashNameConstants;
import org.snnu.lier.service.DownloadRequestService;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.messaging.Message;
import org.springframework.messaging.MessageHeaders;
import org.springframework.messaging.MessagingException;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;

@Slf4j(topic="download-complete")
@Component
public class HandlerMsg {

    @Resource
    StringRedisTemplate stringRedisTemplate;

    @Resource
    DownloadRequestService downloadRequestService;


    @RabbitListener(queues = DownloadConstants.DOWNLOAD_COMPLETE_QUEUE_NAME)
    public void handler(Message message, Channel channel) throws IOException {
        DownloadRequest downloadRequest = (DownloadRequest) message.getPayload();
        MessageHeaders headers = message.getHeaders();
        Long tag = (Long) headers.get(AmqpHeaders.DELIVERY_TAG);
        //Todo  这里获取到的id应该是消息id ，但是实际并不是
        String msgId = headers.getId().toString();

        log.info(msgId);

        if (stringRedisTemplate.opsForHash().entries(RedisHashNameConstants.DOWNLOAD_COMPLETE_HASH_NAME).containsKey(msgId)) {
            log.info(msgId + ":该消息已经被消费");
            channel.basicAck(tag, false);
            return;
        }
        try {
            log.info("开始更新下载记录......");
            log.info(downloadRequest.toString());
            stringRedisTemplate.opsForHash().put(RedisHashNameConstants.DOWNLOAD_COMPLETE_HASH_NAME, msgId, "lier");
            channel.basicAck(tag, false);
            downloadRequest.setStatus(1);
            downloadRequest.setUpdateTime(new DateTime());
            downloadRequestService.updateById(downloadRequest);
            log.info("更新成功");
        } catch (MessagingException e) {

            channel.basicNack(tag, false, true);
            e.printStackTrace();
            log.info("更新失败");
        }
    }
}
