import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/act")
public class ServletController extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        ArrayList<String> names = new ArrayList<>();
        names.add(request.getParameter("name1"));
        names.add(request.getParameter("name2"));
        names.add(request.getParameter("name3"));
        names.add(request.getParameter("name4"));

        ArrayList<String> prices = new ArrayList<>();
        prices.add(request.getParameter("price1"));
        prices.add(request.getParameter("price2"));
        prices.add(request.getParameter("price3"));
        prices.add(request.getParameter("price4"));

        ArrayList<Product> products = new ArrayList<>();
        for(int j=0;j<prices.size();j++){
            String name=names.get(j);
            String price=prices.get(j);
            //if(!(name.isEmpty() || price.isEmpty()))
            if(!(price.isEmpty())) {
                System.out.println(j);
                products.add(new Product(name, Double.valueOf(price)));
            }
        }

        double avg =BussinessLogic.avg(products);
        double sum =BussinessLogic.sum(products);


        if (products.isEmpty()) {
            request.getRequestDispatcher("noInput.jsp").forward(request, response);
        } else {
            request.setAttribute("names",names);
            request.setAttribute("prices",prices);
            request.setAttribute("sum", sum);
            request.setAttribute("avg", avg);
            request.getRequestDispatcher("total.jsp").forward(request, response);

        }
    }


}
