package demo1;

/**
 * 既然说字符串就是一个对象,那么有两个问题:
 * 1. 对象肯定有一个类与之对应,那么字符串对应的类是:String
 * 为什么String也是类,不需要导包直接就能用?
 *
 * 所有的类都需要导包才能使用,除两种情况
 * a. 使用的目标类和当前类位于同一个包下
 * b. 要使用的目标类位于java.lang包下,但是不包含子包
 *
 * 2. 既然字符串是对象,那么为什么直接打印出来就是内容呢?
 * 打印println方法逻辑:
 * 1. 如果是字符串类型,那么直接显示
 * 2. 如果不是字符串类型,那么就像办法内部转换成为字符串,然后显示
 * 一般对象都是使用"类型信息@地址值"作为字符串内容的.
 *
 */
public class Demo2StringQuestion {
    public static void main(String[] args) {
        String str = "hello";
        System.out.println(str);

        Person per = new Person();
        System.out.println(per); // demo1.Person@7f31245a
    }
}
