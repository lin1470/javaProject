package demo4;

public class DemoPerson {
    public static void main(String[] args) {
        Person yase = new Person();
        yase.setAge(10);
        yase.setName("yase");

        Person houyi = new Person("houyi",18); //有残构造
        yase.sayHello(houyi.getName());
        houyi.sayHello(yase.getName());
    }
}
