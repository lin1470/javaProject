package com.atguigu.springbootwebcrud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.thymeleaf.util.StringUtils;

import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoginController {

//    @GetMapping
//    @DeleteMapping
//    @PutMapping
//    @RequestMapping(value = "/user/login",method = RequestMethod.POST)
    @PostMapping(value="/user/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password,
                        Map<String,Object> map, HttpSession session){
        if(!StringUtils.isEmpty(username) && "123456".equals(password)){
            // 登录成功
            session.setAttribute("loginUser",username);
            return "redirect:/main.html";
        }else{
            // 登录失败
            map.put("msg","用户名密码错误");
            return "login";
        }

    }
}
