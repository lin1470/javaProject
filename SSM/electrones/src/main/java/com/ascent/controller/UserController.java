package com.ascent.controller;

import com.ascent.bean.Usr;
import com.ascent.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * @author bruce
 * @date 19-3-18
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("login")
    public String login(@RequestParam(value = "username")String username,
                        @RequestParam(value = "password") String password,
                        @RequestParam(value = "isLogin",required = false) boolean isLogin,
                        HttpServletRequest request){

//        System.out.println("login  the username "+username+"\npassword "+password);
        boolean result;
        String tip = null;
        Usr user = userService.userLogin(username, password);
        // 根据用户的存在来判断是否成功.
        if(user!=null){
            result = true;
        }else{
            result = false;
            tip = "账号或密码错误";
        }
        request.setAttribute("result",result);
        request.setAttribute("tip",tip);
        request.getSession().setAttribute("user",user);

        // 区分登录页面和首页进来的登录.
        if(isLogin){
            if(result){
                return "index";
            }else {
                return "loginPage";
            }
        }else {
            return "index";
        }
    }

    @RequestMapping("userExit")
    public String userExit(HttpSession httpSession){
        System.out.println("clear the session");
//        status.setComplete();
        // 清除掉所有session中的值.
        httpSession.invalidate();
        return "redirect:index";
    }


}
