public class Demo4ArrayLength {
    /*
    如何获得数组长度?
    格式:
    数组名称.length

    注意:
    一个数组一当在内存中被创建了,那么长度就是定的.

    如何访问数组索引不存在,那么将会发生"数组索引越界异常"
    ArrayIndexOutOfBoundsException
    只要出现这种异常,一定是访问的数组元素不存在.

     */
    public static void main(String[] args) {
        int[] array1={1,45,523,35,2,45,6,78,6};
        System.out.println(array1.length);
        //
//        System.out.println(array1[array1.length]);
        System.out.println(array1[-1]);
    }
}
