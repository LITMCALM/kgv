package org.snnu.lier.controller;

import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j(topic="other-controller")
@Controller
public class OtherController {

    @RequiresRoles("admin")
    @RequestMapping("/user/open")
    public String openPage(Model model){
        model.addAttribute("message","进入开放页面");
        return "open";
    }


    @RequiresRoles("superadmin")
    @RequestMapping("/user/success")
    public String successPage(){
        return "success";
    }
}
