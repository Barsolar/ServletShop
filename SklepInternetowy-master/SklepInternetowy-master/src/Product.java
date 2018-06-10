import java.util.ArrayList;
import java.util.List;

public class Product {

    private String name;
    private Double price;

    public Product(String name, String price) {
        if (!(name.isEmpty() || price.isEmpty())) {
            this.name = name;
            this.price = Double.valueOf(price);
        }
    }

    @Override
    public String toString() {
        return name + " " + price;
    }

    public static void add(List<Product> zakupy, String name, String price) {
        if (!(name.isEmpty() || price.isEmpty())) {
            zakupy.add(new Product(name, price));
        }
    }

    public static List<Double> bill(List<Product> shops) {
        List<Double> prices = new ArrayList<>();
        for (Product p : shops
                ) {
            prices.add(p.getPrice());

        }
        return prices;
    }

    public static List<String> lista(List<Product> shops) {
        List<String> products = new ArrayList<>();
        for (Product p : shops
                ) {
            products.add(p.getName());

        }
        return products;
    }


    public String getName() {
        return name;
    }

    public Double getPrice() {
        return price;
    }

}
