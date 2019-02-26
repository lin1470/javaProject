public class Demo2ArrayVisit {
    /*
    如何访问数组中的元素?
    如果直接打印数组的名称:那么是地址值(哈希值)--[I@7f31245a
    [:代表是数组
    I: 代表Int
    @后面的:代表地址的哈希值.

    如何访问数组当中的一个具体元素呢?
    数组名称[索引]
    索引是从0开始.

    动态初始化的时候,数组当中的元素都会被赋予一个默认值,:
    如果是整数,0
    浮点型,0.0
    字符 '\u0000'(unicode写法)
    布尔值 false
    字符串或者其他引用类型 null
     */
    public static void main(String[] args) {
        int[] array1 = new int[3];
        System.out.println(array1);
        System.out.println(array1[0]);
        System.out.println(array1[1]);
        System.out.println(array1[2]);
        double[] array2 = new double[3];
        System.out.println(array2);
        System.out.println(array2[0]);
        System.out.println(array2[1]);
    }
}
