<%@page import="asd.demo.model.dao.DBManager"%>
<%@page import="asd.demo.model.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>      
        <title>Main</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>

    <body>        
        <%  // This is code in relation to the local database
            //DBManager manager = (DBManager) session.getAttribute("manager");
        %>
       
  
        
        
        
        <div class="navbar">
        <a href="index.jsp" class="links">Main</a>
        <a href="listings.jsp" class="links">View Listings</a>
        <a href="listItem.jsp" class="links">List an Item</a>
        <a href="Auction.jsp" class="links">Auction a product</a>
        <a href="placebid.jsp" class="links">place a bid</a>

        <a href="login.jsp" class="links">Login</a>
        </div>

        <div class="container">
            <div class="row">
                <h> All products </h>
            </div>
            <div class="row">
                <div class="itemList">
                    
                    <%for (int i = 0; i < 9; i++) { //later this will display all the listings in the DB%>
                    
                     <a href="itemPage.jsp" class="itemCard">
                         <img src="puzzle-img.jpg" style="width:200px; height:200px;"/>
                         -Item <%=i%> Name- <!--- later this will display item name --->
                         Price: $10.00 <!--- later this will display item price --->
                     </a> 
                     
                    <% } %>
                </div>        
            </div>
        </div> 
        
        <jsp:include page="/ConnServlet" flush="true" />
        <jsp:include page="logout.jsp"/>

        </div>
        
     

    </body>
</html>