package org.snnu.lier;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.scheduling.annotation.EnableScheduling;


@Slf4j(topic="kgv-web")
@MapperScan("org.snnu.lier.mapper")
//@EnableScheduling
@SpringBootApplication
public class KgvApplication {


    public static void main(String[] args) {
        ConfigurableApplicationContext run = SpringApplication.run(KgvApplication.class, args);


        String[] beanList = run.getBeanDefinitionNames();
        for (int i = 0; i < beanList.length; i++) {
            System.out.println(beanList[i]);
        }
        log.info("this is log......");
    }
}
