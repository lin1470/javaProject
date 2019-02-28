package demo3;

import java.util.ArrayList;

/*
使用方法:
1. 添加元素
public boolean add(E element):向集合当汇总添加一个元素,参数是被添加的元素,而返回值一定是返回true

2. 获取元素
public E get(int index):从集合获取一个元素,参数是元素索引(从0开始)

3. 获取长度
public int size():获取集合的元素个数,集合的长度,得到int数字


注意事项:
ArrayList集合直接打印对象名称,得到的不是地址值,而是内容,格式和数组类似
ArrayList这个类其中的toString方法有特殊处理

对于ArrayList集合来说,添加返回值一定是成功的.但是其他的集合不一定成功
 */
public class Demo02ArrayListMethod {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();

        System.out.println(list);
        //向集合当中添加元素:add
        list.add("hhh");
        list.add("wuyife");
        list.add("sdf");
        System.out.println(list);



    }
}
