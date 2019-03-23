package com.ascent.controller;

import com.ascent.service.Newsservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @author bruce
 * @date 19-3-18
 */
@Controller
public class IndexController {

    @Autowired
    Newsservice newsservice;
    final boolean DEBUG=false;

    @RequestMapping("/index")
    public String index(HttpServletRequest request){

        // 避免重复访问
        Object typ1 = request.getSession().getAttribute("typ1");
        Object typ2 = request.getSession().getAttribute("typ2");
        if(typ1 == null && typ2 == null){
            System.out.println("首次首页");
            Map<String, Object> map = newsservice.index();
            request.getSession().setAttribute("typ1",map.get("typ1"));
            request.getSession().setAttribute("typ2", map.get("typ2"));
            if(DEBUG){
                System.out.println("the typ2 is "+map.get("typ2"));
            }
        }

        return "/index";
    }
}
