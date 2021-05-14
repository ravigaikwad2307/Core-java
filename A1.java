public class A1 {

    static int a = m1();
    static {
        System.out.println("Static block of A1");
        System.out.println(a);
    }
    static int m1(){
        System.out.println("Static method of A1");
        return 111;
    }
    public static void main(String[] args){
        System.out.println("Main method of A1");
        System.out.println(a);

    }
}
