public class DemoPrintArray {
    /*
    遍历数组的方法
    要求使用指定的格式.
     */
    public static void main(String[] args) {
        int[] array = {1,2,3,4,5,6};
        printArray(array);
        printArrayFormat(array);
    }

    public static void printArray(int[] array){
        for(int i = 0;i < array.length;i++){
            System.out.println(array[i]);
        }
    }

    public static void printArrayFormat(int[] array){
        System.out.print("[");
        for(int i = 0;i<array.length;i++){
            if(i!=array.length-1)
                System.out.print(array[i]+",");
            else
                System.out.print(array[i]+"]");
        }

    }
}

