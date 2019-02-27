/*
问题描述:定义person的时候,其中age年龄不规范,但是却无法控制

解决方案:使用private关键字
一旦使用了private关键字对成员进行修饰,那么超出了本类范围之外,就不能直接访问了
如何需要使用private修饰的成员变量,可以使用"间接访问"
为private成员变量编写一对儿setter,getter方法
 */

public class Person {
    // 成员变量
    private String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    private int age;

    // 专门定义一个成员方法用来获取成员变量的数据,getter方法
    public int getAge() {
        return age;
    }

    //专门定义了一个成员方法用来设置成员变量的数据,setter方法
    public void setAge(int age) {
        // 设置条件判断,如何不符合规范就会排除这个数据的进入
        if(age<0||age>200){
            System.out.println("数据错误");
        }else{
            this.age = age;
        }
//        this.age = age;
    }

    // 成员方法
    public void show(){
        System.out.println("i am "+name+","+"my age is "+age);
    }
}

