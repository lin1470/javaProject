package com.atguigu.spring.beans.helloWorld;

public class Car {
    private String brand;
    private String corp;
    private double price;
    private int maxSpeed;

    public Car(String brand, String corp, double price) {
        this.brand = brand;
        this.corp = corp;
        this.price = price;
    }

    public void show(){
        System.out.println(brand+" "+corp+" "+price);
    }

    //重载方法
    public Car(String brand, String corp, int maxSpeed) {
        this.brand = brand;
        this.corp = corp;
        this.maxSpeed = maxSpeed;
    }

    @Override

    public String toString() {
        return "com.atguigu.spring.beans.helloWorld.Car{" +
                "brand='" + brand + '\'' +
                ", corp='" + corp + '\'' +
                ", price=" + price +
                ", maxSpeed=" + maxSpeed +
                '}';
    }
}
