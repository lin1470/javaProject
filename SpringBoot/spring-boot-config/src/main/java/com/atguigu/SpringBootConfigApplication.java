package com.atguigu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;

//@ImportResource("classpath:beans.xml")
//@PropertySource("classpath:person.properties")
@SpringBootApplication
public class SpringBootConfigApplication {



    public static void main(String[] args) {
        SpringApplication.run(SpringBootConfigApplication.class, args);
    }

}
