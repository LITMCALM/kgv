package org.snnu.lier.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Slf4j(topic="download-controller")
@RestController
public class DownloadController {

    @RequestMapping("/download")
    public Object downloadController(HttpServletRequest request, HttpServletResponse response){
        log.info("处理器执行");
        return new String[]{"xiaoli","25"};
    }
}
