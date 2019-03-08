package com.atguigu.springbootwebcrud.component;

import com.sun.corba.se.spi.resolver.LocalResolver;
import org.codehaus.groovy.util.StringUtil;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.LocaleResolver;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

/**
 * 可以在连接上携带区域信息
 */
public class MylocalResolver implements LocaleResolver {

    @Override
    public Locale resolveLocale(HttpServletRequest request) {
        // 这里默认会传入request的信息
        String l = request.getParameter("l");
        // 默认获取的系统区域信息
        Locale locale = Locale.getDefault();
        // 注意判断为空的方法
        if(!StringUtils.isEmpty(l)){
            String[] split = l.split("_");
            locale = new Locale(split[0],split[1]);
        }
        return locale;
    }

    @Override
    public void setLocale(HttpServletRequest request, HttpServletResponse response, Locale locale) {

    }
}
