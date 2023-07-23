package org.snnu.lier.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Auther: litm
 * @Date: 2022/3/24 15:01
 * @Description:
 */
@Controller
@RequestMapping("/pageRequest")
public class PageRequestController {



    @RequestMapping("/search")
    public String searchPage(){
        System.out.println("查询页面");
        return "/static/pages/search.html";
    }

    @RequestMapping("/graph")
    public ModelAndView graphPage(String redisKey,String name) throws JsonProcessingException {
        System.out.println(redisKey);
        ModelAndView modelAndView = new ModelAndView();
//        Object object = jedisUtil.getObject(redisKey);
//        if(object!=null){
//            String objectJson = JsonUtil.toJSONString(object);
//            System.out.println(objectJson);
//            modelAndView.addObject("redisKey",objectJson);
//            modelAndView.setViewName("statics/pages/graph.jsp");
//        }
//        else{
//            modelAndView.setViewName("redirect:/query/any?name="+name);
//        }
        return modelAndView;
    }
}
