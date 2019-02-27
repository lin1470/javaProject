/*
一个类通常情况无法直接使用,类似手机设计图不能直接打电话,
如果要使用,通常需要根据类创建一个真正的对象来使用
莱斯根据设计图来创建一个真正的手机才能用

如果根据类来创建对象
类名称 对象名 =  new 类名称()
 */
public class DemoStudent {
    public static void main(String[] args) {
        //创建一个学生对象
        // 创建一个对象,是一个学生,对象名称叫stu1
        // 对象的名称stu1也叫作对象的引用名
        Student stu1 = new Student();
        Student stu2 = new Student();
        Student stu3 = new Student();

    }
}
