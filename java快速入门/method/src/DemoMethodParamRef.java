public class DemoMethodParamRef {
    /*
    对于引用数据类型(除了String)来说,形式参数的操作会影响实际参数.
     */
    public static void main(String[] args) {
        int[] array={1,2,3,4};
        for (int i = 0; i < array.length; i++) {
            System.out.println(array[i]);
        }
        change(array);
        // 在函数里面接受了并且做修改之后直接改变数组里面的值.
        for (int i = 0; i < array.length; i++) {
            System.out.println(array[i]);
        }

    }


    public static void change(int[] arr){
        for (int i = 0; i < arr.length; i++) {
            arr[i] *= 10; // 扩大十倍,然后直接打印出来
            System.out.println(arr[i]);
        }
    }

}
