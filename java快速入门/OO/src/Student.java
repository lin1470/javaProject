public class Student {
    /*
    定义一个类,用来模拟显示事物"学生"

    学生事物有两个组成部分:
    属性:姓名,年龄
    行为:吃饭,睡觉,学习

    对应到勒种也是两个部分:
    成员变量(属性):
        String name;//姓名
        int age; // 你年龄
    成员方法(行为):
        public void eat() {....}//吃饭
        public void sleep() {....} //睡觉
        pubiic void study() {....} // 学习
     */

    String name; //姓名
    int age; //年龄

    public void eat(){
        System.out.println("chifanfan");
    }

    public void study(){
        System.out.println("study");
    }

    public void sleep(){
        System.out.println("sleep");
    }
}
