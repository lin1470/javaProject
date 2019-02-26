public class DemoMethodParamBasic {
    /*
      什么叫"参数传递"
      也就是在调用方法的时候,想方法内春如一些数据的动作.

      [形式参数]:在定义方法的时候,写在小括号之内的参数.(被接受数据)

      [实际参数]:在调用方法的时候,真正传入方法里的数据(主动传递的数据)

      参数传递的过程中,有两项规则:
      1. 对于引用数据类型(除了String)来说,形式参数的操作会影响实际参数
      2. 对于基础数据类型(以及String)来说,形式参数的操作不会影响实际参数

     */
    public static void main(String[] args) {
        int a =10;
        int b = 20;
        System.out.println(a+b);
        // 基础类型在方法内部修改了变量但是不会影响实际参数
        change(a,b);
        System.out.println(a+b);

    }

    public static void change(int a,int b){
        a *= 10;
        b *= 10;
    }
}
