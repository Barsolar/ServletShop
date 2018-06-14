<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Summary</title>
</head>
<body>
<h2>Summary: </h2>
<%
    ArrayList<Double> prices = (ArrayList<Double>) request.getAttribute("prices");
    ArrayList<String> names = (ArrayList<String>) request.getAttribute("names");
%>

<table>
<thead>
<tr>
    <th scope="col">Name</th>
    <th scope="col">Price</th>
</tr>
</thead>
<tbody>
<tr>
    <td><%=names.get(0)%>
    </td>
    <td><%=prices.get(0)%>
    </td>
</tr>

<tr>

    <%
        if (names.size() > 1) {
            out.println("<td>" + names.get(1) + "</td>");
            out.println("<td>" + prices.get(1) + "</td>");
        }
        ;
    %>

</tr>
<tr>
    <%
        if (names.size() > 2) {
            out.println("<td>" + names.get(2) + "</td>");
            out.println("<td>" + prices.get(2) + "</td>");
        }
        ;
    %>
</tr>
<tr>
    <%
        if (names.size() > 3) {
            out.println("<td>" + names.get(3) + "</td>");
            out.println("<td>" + prices.get(3) + "</td>");
        }
        ;
    %>
</tr>
</tbody>
</table>

<%
    Object sum = request.getAttribute("sum");
    Object avg = request.getAttribute("avg");
%>
<h2>Total:  <%=sum%></h2>
<h2>Avg: <%=avg%></h2>
<a href="/index.jsp">Go back</a>
</body>
</html>
