package com.atguigu.spring.beans.helloWorld;

public class HelloWorld {
    private String name;

    public String getName() {
        return name;
    }

    public void setName2(String name) {
        System.out.println("setName2:"+ name);
        this.name = name;
    }

    public void hello(){
        System.out.println("hello"+ this.name);
    }

    public HelloWorld(){
        System.out.println("com.atguigu.spring.beans.helloWorld.HelloWorld's Constructor");
    }
}
