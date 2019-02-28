package demo3;

import java.util.ArrayList;

/**
 * 什么叫做集合呢
 * 集合和数组类似,本身也是一种引用类型,而且可以保存很多歌数据
 * 区别在于数组的长度不可以改变,集合的长度可以任何改变.
 * 集合包含很多种:ArrayList,HashSet.LinkList.HashMap....
 * 现阶段我们只学习ArrayList
 *
 * 创建:
 * public ArrayList():默认无参数的构造方法.
 * ArrayList<泛型> list = new ArrayList<>();
 * 泛型:也就是集合当中存放的全都是同意的什么类型的数据
 * 注意:泛型只能是引用类型,不听你那个是基本类型
 *
 * 使用:
 */
public class Demo01ArrayList {
    public static void main(String[] args) {
        //创建集合,存放String
        ArrayList<String> list = new ArrayList<>();

        //泛型智能写引用类型,不能写基本类型,下面错误
//        ArrayList<int> list1 = new ArrayList<int>();
    }
}
