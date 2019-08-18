<%-- 
    Document   : Auction
    Created on : 2019-8-13, 19:34:59
    Author     : Cai weize
--%>

<%@page import="java.util.Random"%>
<%@page import="asd.demo.model.dao.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List an Item</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
        <jsp:include page="header.jsp"/>
    <body>
        

        <%  // This is code in relation to the local database
            DBManager manager = (DBManager) session.getAttribute("manager");
            //this is code that changes the page depending on if the user has listed an  item properly
            String itemName = request.getParameter("itemName");
            if (itemName == null) {
        %>
        <h1><p>Auction a Product</p></h1>
        <!--If user is logged in then -->
        <form method="post" action="Auction.jsp">
            <table>
                <tr>
                    <td>
                        <p>Name:</p>
                    </td>
                    <td>
                        <input type="text" name="itemName">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Image:</p>
                        <p>Will be implemented</p>
                    </td>
                    <td>
                        <input type="text" name="">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Category:</p>
                    </td>
                    <td>
                        <input type="text" name="itemCategory">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Description:</p>
                    </td>
                    <td>
                        <input type="text" name="itemDesc">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Condition:</p>
                    </td>
                    <td>
                        <input type="text" name="itemCond">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Quantity:</p>
                    </td>
                    <td>
                        <input type="text" name="itemQuantity">
                    </td>
                </tr>                
                <tr>
                    <td>
                        <p>Lowest price:</p>
                    </td>
                    <td>
                        <input type="text" name="itemPrice">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Color:</p>
                    </td>
                    <td>
                        <input type="text" name="itemColor">
                    </td>
                </tr>
                <tr>
                    <td>
                        <p>Year Made:</p>
                    </td>
                    <td>
                        <input type="text" name="itemYearMade">
                    </td>
                </tr>
                 <tr>
                    <td>
                        <p>Expire Date:</p>
                    </td>
                    <td>
                        <input type="date" name="expdate">
                    </td>
                </tr>
                <tr><td></td><td>
                        <!--If all necessary forms are filled out then let user submit -->
                        <input type="submit" value="Auction item">
                    </td></tr>
            </table>
        </form>
        <%
        } else {

            String itemCategory = request.getParameter("itemCategory");
            String itemDesc = request.getParameter("itemDesc");
            String itemCond = request.getParameter("name");
            Double itemPrice = Double.parseDouble(request.getParameter("itemPrice"));
            String itemDateListed = "" + java.time.LocalDate.now();
            int itemQuantity = Integer.parseInt(request.getParameter("itemQuantity"));
            String expdate = request.getParameter("expdate");
           
            String itemSellerID = "11111111";
            Random rand = new Random();
            String itemID = "" + rand.nextInt(999999999);
            String itemColor = request.getParameter("itemColor");
            String itemYearMade = request.getParameter("itemYearMade");

            manager.addAucItem(itemID, itemName, itemDateListed, itemQuantity,  itemPrice, itemDesc, itemCategory, itemYearMade, itemSellerID, itemCond, itemColor, expdate, null);
        %>
        <p><%=itemName%> has been Auctioned</p>
        <a href="Auction.jsp">Auction another Product</a>
        <%
            }
        %>

    </body>
</html>
