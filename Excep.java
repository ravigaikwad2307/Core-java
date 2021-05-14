import java.lang.Exception;
public class Excep extends Throwable {
    public static void main(String[] args){
        try{
            System.out.println("try block");
            int a = 10/0;
        }
        catch(java.lang.Exception e){
            System.out.println("catch block");
            System.out.println(e.toString());
            try{
                System.out.println("Ram".charAt(3));
            }
            catch(java.lang.Exception e1){
                System.out.println(e1.toString());
            }
        }
        finally {
            System.out.println("finally block");
            try{
                int a[] = new int[-1];
            }
            catch(java.lang.Exception e1) {
                System.out.println(e1.toString());
            }
        }
    }
}
