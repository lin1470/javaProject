package demo1;
/**
 * Java当中的数据类型只有两种:基本类型,引用类型.
 * 基本类型就是8个关键字,只要不是这八者之一,那么剩下的全都叫做引用类型,所以字符串是引用类型
 */
public class Demo1String {
    public static void main(String[] args) {

        // 动态初始化一个数组,就是创建一个对象,数组就是一个对象
        int[] array1 = new int[5];
        // 静态初始化一个数组也是一个对象
        int[] array2 = {1,2,3,4};
        //字符串直接协商双引号,就是一个String类型的对象!String就是类名称
        String str = "Hello";
        System.out.println(str);

        // 直接使用的字符串常量,也照样是一个字符串对象


    }
}
