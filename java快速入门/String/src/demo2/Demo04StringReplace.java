package demo2;

/**
 * 如果希望字符串当中指定的部分进行替换操做,需要使用:
 *
 * public String replace(CharSequence oldStr,CharSequence newStr)
 *
 * 注意:
 * 字符串的内容不会发生改变的,所以replace方法返回的是一个全新的字符串
 */
public class Demo04StringReplace {
    public static void main(String[] args) {
        String str1 = "sss".replace("ss","11");
        System.out.println(str1);

    }
}
