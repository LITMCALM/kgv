package org.snnu.lier.config;

import lombok.extern.slf4j.Slf4j;

import org.snnu.lier.mapper.DownloadRequestLogDao;
import org.snnu.lier.model.amqp.DownloadRequestLog;
import org.snnu.lier.model.constant.DownloadConstants;
import org.snnu.lier.service.DownloadRequestLogService;
import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.annotation.EnableRabbit;
import org.springframework.amqp.rabbit.connection.CachingConnectionFactory;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.annotation.Resource;
import java.util.List;


/**
 * @Auther: litm
 * @Date: 2022/9/22 11:28
 * @Description:
 */
@Slf4j(topic="rabbit-config")
@Configuration
public class RabbitConfig {
    @Autowired
    CachingConnectionFactory cachingConnectionFactory;

    @Resource
    DownloadRequestLogService downloadRequestLogService;

    @Bean
    RabbitTemplate rabbitTemplate() {
        RabbitTemplate rabbitTemplate = new RabbitTemplate(cachingConnectionFactory);
        rabbitTemplate.setConfirmCallback((data, ack, cause) -> {
            String msgId = data.getId();
            if (ack) {
                log.info(msgId + ":消息发送成功");
                DownloadRequestLog downloadRequestLog = downloadRequestLogService.selectOneById(msgId);

                downloadRequestLogService.updateById(downloadRequestLog.setStatus(1));
            } else {
                log.info(msgId + ":消息发送失败");
            }
        });
        rabbitTemplate.setReturnCallback((msg, repCode, repText, exchange, routingkey) -> {
            log.info("消息发送失败");
        });
        return rabbitTemplate;
    }

    @Bean
    Queue downloadQueue() {
        return new Queue(DownloadConstants.DOWNLOAD_QUEUE_NAME, true);
    }

    @Bean
    DirectExchange downloadExchange() {
        return new DirectExchange(DownloadConstants.DOWNLOAD_EXCHANGE_NAME, true, false);
    }
    @Bean
    Binding downloadBinding() {
        return BindingBuilder.bind(downloadQueue()).to(downloadExchange()).with(DownloadConstants.DOWNLOAD_ROUTING_KEY_NAME);
    }


    @Bean
    Queue downloadCompleteQueue(){
        return new Queue(DownloadConstants.DOWNLOAD_COMPLETE_QUEUE_NAME,true);
    }

    @Bean
    DirectExchange downloadCompleteExchange() {
        return new DirectExchange(DownloadConstants.DOWNLOAD_COMPLETE_EXCHANGE_NAME, true, false);
    }
    @Bean
    Binding downloadCompleteBinding() {
        return BindingBuilder.bind(downloadCompleteQueue()).to(downloadCompleteExchange()).with(DownloadConstants.DOWNLOAD_COMPLETE_ROUTING_KEY_NAME);
    }
}
