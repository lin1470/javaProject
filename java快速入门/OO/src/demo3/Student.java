package demo3;

/**
 * 如何定义一个标准的类?
 *
 * 1. 所有成员变量都需要使用private关键字私有化
 * 2. 为每一个成员变量编写一对儿getter setter方法
 * 3. 编写一个无参数构造方法
 * 4. 编写一个有参数构造方法
 *
 */
public class Student {

    private String name;

    private int age;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }




}
