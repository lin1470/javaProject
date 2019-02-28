package demo3;

import java.util.ArrayList;

/*
 * 集合泛型必须是引用类型,不能是基本类型
 * 如果一定要存储基本数据,那么就要使用基本类型对应的包装类(位于java.lang包下,有八种)
 *
 * 基本类型 对应包装类
 * byte    Byte
 * short   Short
 * int     Integer
 * long    Long
 * float   Float
 * double  Double
 * char    Character
 * boolean Boolean
 *
 * 从jdk1.5开始,基本类型可以和对应的包装类进行自动装箱和拆箱
 * 装箱:基本类型 -->包装类
 * 拆箱:包装类--> 基本类型
 */
public class Demo03ArrayListWrapper {

    public static void main(String[] args) {
        ArrayList<Integer> list = new ArrayList<>();

        list.add(100);
        list.add(2);
        list.add(3);
        System.out.println(list.get(1));
    }
}
