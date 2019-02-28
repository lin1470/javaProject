package demo1;
/*
 * 字符串是最常用的对象,所以在程序当中往往会出现很多重复的字符串
 * 为了节省内存,所以引入了"字符串池"的设计,可以重复利用字符串
 *
 * 关于字符串池的几点描述:
 * 1. 字符串池是位于堆内存当中的一小块空间,用来保存若干个字符串的地址值
 * 2. 字符串池当中绝对不会出现重复的字符串对应的地址,保证字符串不重复
 * 3. 凡是直接双引号字符串默认都在池中,而new出来的字符串默认不在池中
 *
 * 对于基本类型来说,==是进行数据内容的相同比较;
 * 但是对于引用类型来说,==是进行地址值相同比较
 * 如果是两个对象,那么地址值必然不同;如何地址值相同,那么必然是同一个对象.
 *
 */
public class Demo04StringPool {
    public static void main(String[] args) {
        // 都是在字符串池当中
        String str1 = "hello";
        String str2 = "hello";
        System.out.println(str1==str2);

        // 因为是直接new的所以是两个对象,不同的地址值
        char[] array = {'h','e','l','l','o'};
        String str3 = new String(array);
        String str4 = new String(array);
        System.out.println(str3==str4);

        // 字符串池与堆中new出来的空间进行比较
        System.out.println(str1==str3);
    }
}
