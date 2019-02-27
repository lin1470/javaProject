import java.util.Arrays;

public class DemoPrintArray {
    public static void main(String[] args) {
        int[] array = {1,2,3,4,5};

        // 首先面向过程,每个步骤细节都要亲自处理
        System.out.print("[");
        for (int i = 0; i < array.length; i++) {
            if(i == array.length-1){
                System.out.print(array[i]+"]");
            }else{
                System.out.print(array[i]+",");
            }
        }

        System.out.println("\n================");


        //面向对象的思想,达到同样的效果
        //自己不处理找人帮忙做事
        //有个Arrays
        //通过这个工具可以讲数组转换成为指定格式的字符串
        String str = Arrays.toString(array);
        System.out.println(str);
    }
}
