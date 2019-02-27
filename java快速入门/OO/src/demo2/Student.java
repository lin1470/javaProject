package demo2;

/**
 * 构造方法而是一种方法,也可以进行方法重载(overload)
 * 重载:方法的名称相同,但是参数列表不同
 *
 * 构造方法重在的好处:
 * 1. 定义一个无参数的构造方法,可以直接new对象
 * 2. 定义一个重载的全参数的构造方法,可以在new对象的的同事方便对成员变量进行赋值
 */
public class Student {

    private String name;
    private int age;
    public Student(){
        System.out.println("无参数的构造方法");

    }

    public Student(int num ){
        System.out.println("无参数的构造方法");

    }
}
