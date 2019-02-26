import java.util.Scanner;

public class DemoMethodMax {
    public static int getMax(int a,int b){
        if(a>b)
            return a;
        else
            return b;
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("input first number:");
        int num1 = sc.nextInt();
        System.out.println("input second number:");
        int num2 = sc.nextInt();
        System.out.println("the max number is:"+getMax(num1,num2));
    }
}
