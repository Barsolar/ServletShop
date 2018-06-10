<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Win8
  Date: 2018-06-05
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rachunek</title>
</head>
<body bgcolor="#E6E6FA">
<div style="text-align: center;"><h1>Podsumowanie zakupów:</h1></div>
<div style="text-align: center;"><h2>Zakupione:</h2></div>

<% Object zakupy = request.getAttribute("ceny");
    List<Double> cena = (List<Double>) zakupy;

    Object listaP = request.getAttribute("produkty");
    List<String> produkty = (List<String>) listaP;
%>



<table style="margin: 0px auto;">
    <thead>
    <tr>
        <th scope="col">L.P.</th>
        <th scope="col">Produkt</th>
        <th scope="col">Cena</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td><%=produkty.get(0)%>
        </td>
        <td><%=cena.get(0)%>
        </td>
    </tr>

    <tr>

        <%
            if (produkty.size() > 1) {
                out.println("<th scope=\"row\">" + 2 + "</th>");
                out.println("<td>" + produkty.get(1) + "</td>");
                out.println("<td>" + cena.get(1) + "</td>");
            }
            ;
        %>

    </tr>
    <tr>
        <%
            if (produkty.size() > 2) {
                out.println("<th scope=\"row\">" + 3 + "</th>");
                out.println("<td>" + produkty.get(2) + "</td>");
                out.println("<td>" + cena.get(2) + "</td>");
            }
            ;
        %>
    </tr>
    <tr>
        <%
            if (produkty.size() > 3) {
                out.println("<th scope=\"row\">" + 4 + "</th>");
                out.println("<td>" + produkty.get(3) + "</td>");
                out.println("<td>" + cena.get(3) + "</td>");
            }
            ;
        %>
    </tr>
    </tbody>
</table>

<%
    Object suma = request.getAttribute("suma");
    Object srednia = request.getAttribute("srednia");
    
%>
<div style="text-align: center;"><h2>Podsumowanie:  <%=suma%></h2></div>
<div style="text-align: center;"><h2>średnia cena: <%=srednia%></h2></div>
<div style="text-align: center;"><a href="/index.jsp">Powrót do sklepu</a></div>
</body>
</html>