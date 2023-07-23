package org.snnu.lier;

import lombok.extern.slf4j.Slf4j;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import java.util.List;

@Slf4j(topic="file-server")
@SpringBootApplication
@MapperScan("org.snnu.lier.mapper")
public class FileserverApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(FileserverApplication.class, args);
//		String[] beanlist = context.getBeanDefinitionNames();
//		for (String s : beanlist) {
//			log.info(s);
//		}
	}

}
