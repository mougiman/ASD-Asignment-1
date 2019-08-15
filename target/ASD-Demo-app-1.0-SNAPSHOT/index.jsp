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
       
  
        
        
        <div class="itemList">
            <%for (int i = 0; i < 9; i++) { //later this will display all the listings in the DB%>
            <div class="itemCard">-Item <%=i%>-</div>
            <% } %>
        </div>        
        
        <jsp:include page="/ConnServlet" flush="true" />
    </body>
</html>
