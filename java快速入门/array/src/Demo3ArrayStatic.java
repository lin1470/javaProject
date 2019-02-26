public class Demo3ArrayStatic {
    /*
     静态初始化:
    静态初始化不会直接指定长度,而是直接指定具体的元素内容
    标准格式:
    数据类型[] 数据名称 = new type[]{ 1,2,3,4.... }

    简便格式:
    数据类型[] 数据名称 ={ 1,2,3,4.... }

    注意事项:
    1. 虽然没有长度,但是可以推算有多少个长度.
    2. 虽然简便格式中没有写new,但是仍然有内存当中开辟空间
    3. 虽然直接指定了具体元素内容,但是仍然会有默认值替换的过程.

     */
    public static void main(String[] args) {
        // 动态初始化
        int[] array1 = new int[3];
        array1[0] = 10;
        System.out.println(array1[0]);

        System.out.println("==========");
        // 静态初始化,一个步骤就型
        int[] array2= new int[]{15,25,35};
        System.out.println(array2[0]);
        System.out.println(array2[1]);
        System.out.println(array2[2]);
        System.out.println("==========");
        int[] array3 = {16,26,36};

    }
}
