package demo1;
/*
 * 字符串创建的常见的方法:(两种构造方法和一种直接赋值)
 *
 * 两种常用的构造方法:
 * 1. public String(char[] array):参数是一个字符数组
 * 2. public String(char[] array,int offset,int count):字符数组的一部分来创建
 * 参数offset代表一个数组当中的起始索引,从0开始
 *
 * 直接赋值方法:
 * 直接赋值一个双引号字符也是一个String对象
 */
public class Demo03StringInit {
    public static void main(String[] args) {
        char[] array = {'h','e','i','1','o'};
        //根据字符数组来创建字符串
        // 类名称 对象名 = new 类名称(参数)
        String str1 = new String(array);
        System.out.println(str1);

        //根据字符数组的一部分来创建字符串
        String str2 = new String(array,2,3);
        System.out.println(str2);

        // 如何指定的索引超出范围,引发字符越界异常.
        String str3 = new String(array,100,200);

        // 直接赋值
        String str4 = "Hello";
        System.out.println(str4);
    }
}
