<%-- 
    Document   : salesItem
    Created on : Aug 15, 2019, 9:34:50 PM
    Author     : changkeun
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>      
        <title>Listing</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
                <jsp:include page="header.jsp"/>

    <body>
 
        <p>Listings</p>
        <table>
            <tr>
                <td>Date</td>
                <td>Image</td>
                <td>Name</td>
                <td>Price</td>
                <td>Buy</td>
            </tr>
            <%for (int i = 0; i < 2; i++) { //later this will display all the listings in the DB%>
            <tr>
                <td>10/03/2019</td>
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
