<%-- 
    Document   : listings
    Created on : 11/08/2019, 7:44:05 PM
    Author     : Mougi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listings</title>
    </head>
    <body>
        <a href="index.jsp">Main</a>
        <p>Listings</p>
        <table>
            <tr>
                <td>Image</td>
                <td>Name</td>
                <td>Price</td>
                <td>Buy</td>
            </tr>
            <%for(int i = 0; i < 5; i++){ //later this will display all the listings in the DB%>
            <tr>
                <td></td>
                <td>iPhone X</td>
                <td>$1000.00</td>
                <td>Buy</td>
            </tr>
            <%  }
                %>
        </table>
    </body>
</html>
