package com.atguigu.spring.beans.helloWorld;

public class Person {
    private String name;
    private Car car;
    private int age;
//    private List<com.atguigu.spring.beans.helloWorld.Car> cars;


    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public String getName() {
        return name;
    }



    public void setName(String name) {
        this.name = name;
    }

//    public com.atguigu.spring.beans.helloWorld.Car getCar() {
//        return car;
//    }
//
//    public void setCar(com.atguigu.spring.beans.helloWorld.Car car) {
//        this.car = car;
//    }


    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }


    public Person(String name, Car car, int age) {
        this.name = name;
        this.car = car;
        this.age = age;
    }

    @Override
    public String toString() {
        return "com.atguigu.spring.beans.helloWorld.Person{" +
                "name='" + name + '\'' +
                ", car=" + car +
                ", age=" + age +
                '}';
    }

    public Person(){

    }

}
