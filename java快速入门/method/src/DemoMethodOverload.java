public class DemoMethodOverload {
    /*
    问题描述:
    对于类似的多个方法,全都是执行想家的操作,但是因为参数列表不一样,所以需要记住多个名字
    解决方案:
    利用方法可以达到这个效果
    方法重载(Overload),方法的名称相同,但是参数列表不同.(比如说参数个数)
    参数列表不同:
    1. 参数的个数不同
    2. 参数的类型不同
    3. 参数的多类型顺序不同.

    重载与下列因素无关:
    1. 返回值类型
    2. 参数的名称
     */
    public static void main(String[] args) {
        System.out.println(sum(1,1));
        System.out.println(sum(1.0,2.0));
    }

    public static int sum(int a,int b){
        return a+b;
    }

    // 参数个数不一样
    public static int sum(int a,int b,int c){
        return a+b+c;
    }
    public static int sum(int a,int b,int c,int d){
        return a+b+c+d;
    }

    // 参数类型不同
    public static double sum(double a,double b){
        return a+b;
    }

    // 多参数的顺序不同

}
