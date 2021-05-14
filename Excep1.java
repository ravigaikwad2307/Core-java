public class Excep1 {
    public static void main(String[] args){
        try{
            //int a = 10/0;
            //System.out.println("Ram".charAt(3));
            int a[] = new int[-1];
        }
        catch(ArithmeticException | StringIndexOutOfBoundsException | NegativeArraySizeException e){
            System.out.println("-----------");
            e.printStackTrace();

        }
    }
}
