<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Shop</title>
  </head>
  <body>
  <h2>Please, type in the name and price of what you want to buy :D</h2>
  <form method="post" action="act">
    <input type="text" name="name1" placeholder="Name">
    <input type="number" name="price1" step="0.01" placeholder="price"><br>
    <input type="text" name="name2" placeholder="Name">
    <input type="number" name="price2" step="0.01" placeholder="price"><br>
    <input type="text" name="name3" placeholder="Name">
    <input type="number" name="price3" step="0.01" placeholder="price"><br>
    <input type="text" name="name4" placeholder="Name">
    <input type="number" name="price4" step="0.01" placeholder="price"><br>
    <input type="submit" value="Confirm">
  </form>
  </body>
</html>
