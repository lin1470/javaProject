package demo1;

/**
 * 字符串对象在内存当中一旦被创建,那么内容不可以被改变
 *
 * 字符串的内容不会发生改变,当你觉得变了的时候,那是创建了新的字符串
 */
public class Demo05StringEternal {
    public static void main(String[] args) {
        String str = "Hello";
        System.out.println(str); // Hello

        str = "world";
        System.out.println(str); // World

        String str2 = "love";
        str2 += "java"; //这个会在堆中新创建一个对象,但是不会存在池中
        String str3 = "lovejava";
        String str4 = "love"+"java"; // 这样的话,倒是直接存在了池中,因为这个在编译的时候就可以确定了.
        System.out.println(str2);
        System.out.println(str3);
        System.out.println(str2==str3); // false
        System.out.println(str3==str4); // true
    }
}
