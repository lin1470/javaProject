public class Demo2Student {
    /*
    如何使用创建好的对象

    勒种已经电影一号两个组成部分:成员变量,成员方法
    所以根据类创建出来的对象也有这两个部分

    如何使用对象当中的成员变量
    对象名.成员变量名

    如何使用对象当中的成员方法
    对象名.成员方法

     总结:通过对象名,想用谁就点谁.
     */
    public static void main(String[] args) {
        Student stu = new Student();
        System.out.println(stu.name);
        System.out.println(stu.age);
        System.out.println("==============");

        //改变成员变量的数据值
        stu.name = "luhan";
        stu.age = 20;
        System.out.println(stu.name);
        System.out.println(stu.age);


        String name = stu.name;
        System.out.println(name);

        //使用对象当中的成员方法
        stu.eat();//调用吃饭的成员方法
        stu.sleep();
        stu.study();

    }
}
