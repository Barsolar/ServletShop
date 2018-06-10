import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/product")
public class Controler extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        String produkt1 = request.getParameter("produkt1");
        String produkt2 = request.getParameter("produkt2");
        String produkt3 = request.getParameter("produkt3");
        String produkt4 = request.getParameter("produkt4");

        String cena1 = request.getParameter("cena1");
        String cena2 = request.getParameter("cena2");
        String cena3 = request.getParameter("cena3");
        String cena4 = request.getParameter("cena4");

        List<Product> zakupy = new ArrayList<>();
        Product.add(zakupy,produkt1,cena1);
        Product.add(zakupy,produkt2,cena2);
        Product.add(zakupy,produkt3,cena3);
        Product.add(zakupy,produkt4,cena4);

        Calculate cal = new Calculate();

        double avr =cal.average(zakupy);
        double sum =cal.summ(zakupy);


        if (cena1.isEmpty() && cena2.isEmpty() && cena3.isEmpty() && cena4.isEmpty()) {
            request.getRequestDispatcher("empty.jsp").forward(request, response);
        } else {
            request.setAttribute("ceny",Product.bill(zakupy));
            request.setAttribute("produkty",Product.lista(zakupy));
            request.setAttribute("suma", sum);
            request.setAttribute("srednia", avr);
            request.getRequestDispatcher("sum.jsp").forward(request, response);

        }
    }

}
