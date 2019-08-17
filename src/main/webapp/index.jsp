<%@page import="asd.demo.model.dao.DBManager"%>
<%@page import="asd.demo.model.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>      
        <title>Main</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
            <jsp:include page="header.jsp"/>
    <body>        
        <%  // This is code in relation to the local database
            //DBManager manager = (DBManager) session.getAttribute("manager");
        %>
       
        <p class="title">Sell n Buy / Barter-Mart</p>
        <p>Name is currently pending</p>
        
        <div class="navbar">
        <a href="index.jsp" class="links">Main</a>
        <a href="listings.jsp" class="links">View Listings</a>
        <a href="listItem.jsp" class="links">List an Item</a>
        <a href="Auction.jsp" class="links">Auction an item</a>
        <a href="placebid.jsp" class="links">Bid in an Auction</a>
        </div>
        
        
        <div class="itemList">
            <%for (int i = 0; i < 9; i++) { //later this will display all the listings in the DB%>
            <div class="itemCard">-Item <%=i%>-</div>
            <% } %>
        </div>        
        
       <jsp:include page="/ConnServlet" flush="true" />
    </body>
</html>