package com.atguigu.spring.beans.helloWorld;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    public static void main(String[] args) {
//        com.atguigu.spring.beans.helloWorld.HelloWorld helloWorld = new com.atguigu.spring.beans.helloWorld.HelloWorld();
//        helloWorld.setName("atguigu");
//        helloWorld.hello();

        // 1. 创建Spring的IOC容器对象
        // ApplicationContext:代表IOC容器
        //ClassPathXmlApplicationContext:是ApplicationContext接口的实现类,改该实现类从类路径下加载实现类
        ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext.xml");

        // 2. 从IOC容器中获取bean实例
        //利用id定位到IOC容器中的bean
        HelloWorld helloWorld = (HelloWorld)ctx.getBean("helloWorld");
        //利用类型返回IOC容器的bean,但要求IOC容器中必须智能有一个该类型的bean,而且不需要用强转的方式.
//        com.atguigu.spring.beans.helloWorld.HelloWorld helloWorld = ctx.getBean(com.atguigu.spring.beans.helloWorld.HelloWorld.class);
        //3. 调用hello方法
        helloWorld.hello();
//        System.out.println("hello world");

        //通过构造器来赋值
        Car car = (Car)ctx.getBean("car");

        // 重载构造器
        Car car1 = (Car) ctx.getBean("car1");

        System.out.println(car);
        System.out.println(car1);

        Person person = (Person) ctx.getBean("person2");
        System.out.println(person);
    }
}
