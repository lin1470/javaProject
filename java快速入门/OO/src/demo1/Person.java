package demo1;
/*
当局部变量和成员变量重名的时候,方法当中会根据"就近原则"使用局部变量
如何希望区分一下,就需要使用格式:
this.成员变量名

this关键字的经典作用:将重名的成员变量和局部变量区分开

扩展:
this关键字代表的是"当前对象"
记住:通过谁调用的方法,谁就是this.
 */
public class Person {

    String name;//姓名

    public void sayHello(String name){
        System.out.println(name+",你好,我是"+ this.name +".");
    }
}
