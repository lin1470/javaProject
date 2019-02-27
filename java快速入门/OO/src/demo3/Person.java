package demo3;
/**
 * 对于所有的数据类型,getter都不必须叫getXxx,setter都必须叫setXxx
 * 如何是boolean,那么setXxx不变,但是getXxx要变成isXxx
 */
public class Person {
    private String name; // 姓名
    private int age; // 年龄
    private boolean male; //男性或者女性

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    // 注意布尔类型的特殊情形.
    public boolean isMale() {
        return male;
    }

    public void setMale(boolean male) {
        this.male = male;
    }


}
