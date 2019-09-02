<%@page import="asd.demo.model.*"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>

    <body>        
        <%  // This is code in relation to the local database
            Item item = (Item) request.getAttribute("item");
        %>
        
        <jsp:include page="../header.jsp"/>
        <form name="indexForm" action="./itemServ" method="get"
        <div class="container">
            <div class="row">
                <h> All products </h>
            </div>
            <div class="row">
                <div class="itemList">
                    <%for (int i = 0; i < 9; i++) { //later this will display all the listings in the DB%>
                    <!--./item?id= GETITEMID-->
                    <a href="./item" class="itemCard">
                         <img src="../<%=item.getImage()%>" style="width:200px; height:200px;"/>
                         <%=item.getName()%>
                         $<%=item.getPrice()%>
                     </a>
                    <% } %>
                </div>        
            </div>
        </div> 
        </form>
        <jsp:include page="/ConnServlet" flush="true" />
        <jsp:include page="logout.jsp"/>
        </div>
    </body>
</html>