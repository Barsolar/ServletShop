<%--
  Created by IntelliJ IDEA.
  User: Win8
  Date: 2018-06-05
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sklep</title>
</head>
<body bgcolor="#E6E6FA">
<div style="text-align: center;"><img src="/sklep.png"></div>
<div style="text-align: center;"><h1>Sklep internetowy</h1></div>
<div style="text-align: center;"><h2>Wpisz nazwę produktu i jego cenę </h2></div>

<% %>
<div style="text-align: center;"><form method="post" action="product">
    <input type="text" name="produkt1" placeholder="Produkt">
    <input type="number" name="cena1" placeholder="Cena"><br>
    <input type="text" name="produkt2" placeholder="Produkt">
    <input type="number" name="cena2" placeholder="Cena"><br>
    <input type="text" name="produkt3" placeholder="Produkt">
    <input type="number" name="cena3" placeholder="Cena"><br>
    <input type="text" name="produkt4" placeholder="Produkt">
    <input type="number" name="cena4" placeholder="Cena"><br>
    <input type="submit" value="Zapisz">
</form></div>
</body>
</html>

