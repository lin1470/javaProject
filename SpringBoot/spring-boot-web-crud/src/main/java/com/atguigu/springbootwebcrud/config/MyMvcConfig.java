package com.atguigu.springbootwebcrud.config;

import com.atguigu.springbootwebcrud.component.LoginHanlerIntercepter;
import com.atguigu.springbootwebcrud.component.MylocalResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

//@EnableWebMvc  // 通过这个注解可以全面接管Srping mvc的全部配置,不使用自动配置.
// 使用WebConfigurationAdapter可以扩展SpringMVC的功能
@Configuration
public class MyMvcConfig extends WebMvcConfigurerAdapter {

    // 直接就是配置了视图解析器.
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
//        super.addViewControllers(registry);
        registry.addViewController("/atguigu").setViewName("success");
    }

    // 这个是直接配置一个bean,这个bean里面配置了两个视图解析器.
    @Bean
    public WebMvcConfigurerAdapter webMvcConfigurerAdapter(){
        WebMvcConfigurerAdapter adapter = new WebMvcConfigurerAdapter() {
            @Override
            public void addViewControllers(ViewControllerRegistry registry) {
//                super.addViewControllers(registry);
                registry.addViewController("/").setViewName("login");
                registry.addViewController("/index.html").setViewName("login");
                registry.addViewController("/main.html").setViewName("dashboard");
            }

            //注册拦截器
            @Override
            public void addInterceptors(InterceptorRegistry registry) {
                //静态资源: *.css,*.js
                // spring boot 已经做好了静态资源的映射了.
                registry.addInterceptor(new LoginHanlerIntercepter()).addPathPatterns("/**")
                        .excludePathPatterns("/index.html","/","/user/login");

            }
        };

        return adapter;
    }

    @Bean
    public LocaleResolver localeResolver(){
        return new MylocalResolver();
    }
}
