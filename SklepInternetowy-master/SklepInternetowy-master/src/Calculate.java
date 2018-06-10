import java.util.List;

public class Calculate {

    public double average(List<Product> shops){
        double result=summ(shops)/shops.size();
        return result;
    }

    public double summ(List<Product> shops){
        double result=0;
        for (Product p:shops) {
            result=result+p.getPrice();
        }
        return result;
    }
}