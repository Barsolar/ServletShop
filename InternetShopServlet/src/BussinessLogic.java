import java.util.ArrayList;

public class BussinessLogic {

    public static double sum(ArrayList<Product> products){
        double sum=0;
        for (Product p:products) {
            sum+=p.getPrice();
        }
        return sum;
    }

    public static double avg(ArrayList<Product> products){
        double sum=0;
        double no=0;
        for (Product p:products) {
            sum+=p.getPrice();
            no++;
        }
        double avg = sum/no;
        return avg;
    }
}
