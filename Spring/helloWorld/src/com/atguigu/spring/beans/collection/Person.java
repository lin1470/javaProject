package com.atguigu.spring.beans.collection;

import com.atguigu.spring.beans.helloWorld.Car;

import java.util.List;

public class Person {
    private String name;
//    private com.atguigu.spring.beans.helloWorld.Car car;
    private int age;
    private List<Car> cars;

    public List<Car> getCars() {
        return cars;
    }

    public void setCars(List<Car> cars) {
        this.cars = cars;
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


    public Person(String name, int age, List<Car> cars) {
        this.name = name;
        this.age = age;
        this.cars = cars;
    }

    @Override
    public String toString() {
        return "com.atguigu.spring.beans.helloWorld.Person{" +
                "name='" + name + '\'' +
                ", age=" + age +
                ", cars=" + cars +
                '}';
    }

    public Person(){

    }

}
