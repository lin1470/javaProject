package demo2;
/*
 * 如何进行字符串内容的而比较
 * 如果使用==进行比较,那么是进行地址值的相同的判断
 * 如果就是希望进行字符串的内容比较,则需要使用String当中的成员方法:
 *
 * public boolean equals(Object obj):进行字符串的内容比较,严格区分大小写.
 * object 也是一种类型,可以接受任何类型的数据
 *
 * public boolean equalsIgoreCase(Object obj):忽略大小写
 * 要注意:
 * 1. 字符串的内容比较,一定要使用equals方法,不要用==
 * 2. equals方法具有对称性,a.equals(b)和b.equals(a)效果一样
 * 3. 小技巧:如果equals方法需要和常量比较,那么尽量常量写在前面
 * 调用方法的时候,对象名当中如果存储的是null值,那么会发生空指针异常(NullPointerException).
 * 4. 慧姐协商双引号就是字符串对象,所以用双引号直接点也能调用方法
 */
public class Demo01StringEquals {
    public static void main(String[] args) {
        char[] array = {'h','e','l'};
        String str1 = new String(array);

        String str2 ="hel";
        System.out.println(str1==str2);

        // 进行内容比较,应该使用equals方法

        str2 = null;
//        System.out.println("hel".equals(str1)); //
        System.out.println(str2.equals("hel")); // true,但是这个可以会出现空指针异常

        String str4 = "hello";
        String str5 = "Hello";
        System.out.println(str4.equals(str5));
        System.out.println(str4.equalsIgnoreCase(str5));


    }
}
