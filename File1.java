import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Scanner;
public class File1 {
    public static void main(String[] args){
       /* File file = new File("A.txt");
        try{
            file.createNewFile();
        }
        catch(Exception e){
            System.out.println("Unable to create file");
            e.printStackTrace();
        }*/

/*
        try {
            FileWriter ft = new FileWriter("A.txt");
            ft.write("Hi Ravi How are you?");
            ft.close();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        */
/*
        File f = new File("A.txt");
        try{
            Scanner sc =new Scanner(f);
            while(sc.hasNextLine()){
                String line = sc.nextLine();
                System.out.println(line);
            }
            sc.close();
        }
        catch(Exception e){
            System.out.println("File not Found");
            e.printStackTrace();
        }*/

        File f = new File("A.txt");
        if(f.delete()){
            System.out.println("I have deleted"+f.getName());
        }
        else{
            System.out.println("File is not deleted");
        }
    }
}
