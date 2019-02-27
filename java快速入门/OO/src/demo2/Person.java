package demo2;

/**
 * 构造方法就是专门用来创建对象的方法,当通过new关键字创建对象时,其实就是调用构造方法
 *
 * 如何定义一个构造方法,格式:
 * public 构造方法名(参数列表)
 *{
 *     方法体
 *     //return; 通常省略
 *}
 * 注意:
 * 1. 构造方法不能写返回值类型,连void都没
 * 2. 构造方法的明晨必须和所在的类名称完全一样,连大小写也要一样.
 */
public class Person {

    // 构造方法
    public Person(){
        System.out.println("generator");
    }
}
