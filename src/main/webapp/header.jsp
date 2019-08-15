<%-- 
    Document   : header
    Created on : 15/08/2019, 5:55:03 PM
    Author     : Changkeun
--%>
<%@page import="asd.demo.model.User"%>
<%@page import="asd.demo.model.Users"%>
<%@page import="asd.demo.model.dao.DBManager"%>
<%@page import="asd.demo.model.*"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <header>      
        <title>Barter-Mart</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </header>


      <p class="title">Sell n Buy / Barter-Mart</p>
        <p>Name is currently pending</p>

    <% User user = (User) session.getAttribute("userLogin"); %>                                 
    <div class ="navbar">
        <span class="leftalign">
            <% if (user != null) { %>
            <a href="home.jsp" class="links">Home</a> 
            <a href="listings.jsp" class="links">View Listings</a>
           <a href="listItem.jsp" class="links">List an Item</a>
            
            <% } else { %> 
            <a href="index.jsp" class="links">Home</a>
            <a href="listings.jsp" class="links">View Listings</a>
        <a href="listItem.jsp" class="links">List an Item</a>
            <% } %>
        </span>
        <span class="rightalign">
            <% if (user != null) {%>
            <a href="myAccount.jsp"> <%=user%>'s Profile</a>
                <% if (user.isAdmin()) { %>
                <a href="adminManagement.jsp">Admininstration</a>
                <% } %>
            <a href="cart.jsp">Cart</a>
            <a href="logoutAction.jsp">Logout</a>
            <% } else { %>                      
            <a href="login.jsp" class="links">Log In</a>
            <a href="register.jsp" class="links" >Register</a>
            <a href="cart.jsp" class="links">Cart</a>
            <% }%>                    
        </span> 
    </div>
</html>
