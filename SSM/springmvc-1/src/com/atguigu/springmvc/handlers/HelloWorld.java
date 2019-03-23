package com.atguigu.springmvc.handlers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorld {

//    private final String SUCCESS = "success";

    /**
     * 1.使用@RequestMapping 注解来映射请求的URL
     * 2.返回值会通过试图解释器解析为实际的物理视图,对于InternalResourceViewResolver视图解析器而言,会做如下的解析:
     * 通过prefix+returnVal+suffix 这样的方式得到实际的物理视图,然后会做转发操作
     *
     * /WEB-INF/views/success.jsp
     * @return
     */
    @RequestMapping("/helloworld")
    public String hello(){
        System.out.println("hello world");
        return "success";
    }
}
