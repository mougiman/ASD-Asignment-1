<%-- 
    Document   : view_user
    Created on : Aug 15, 2019, 5:33:46 PM
    Author     : gusck
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="asd.demo.model.dao.DBManager"%>
<%@page import="asd.demo.model.dao.*"%>
<%@page import="java.util.*"%>
<%@page import="asd.demo.controller.*"%>
<%@page import="asd.demo.model.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
 <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
                    <jsp:include page="header.jsp"/>
        
        <body>
        
        <%
            //User user = (User) session.getAttribute("user");            
        %>

        <p class="form_title">Profile Details</p>

            <table class="table">
                <tr><td>Full name</td><td><input type="text" name="name" size="25" value=" Changkeun Hyun<% //=user.getName()%>"></td></tr>
                <tr><td>Email</td><td><input type="text" name="email" size="25" value=" sean3404@uts.com<%//=user.getEmail()%>"></td></tr>
                <tr><td>Phone</td><td><input type="text" name="phone" size="25" value=" 04221191111<%//=user.getPhone()%>"></td></tr>
                       </table>
        
                    <div class="form-group">
                    </div>
         <a href="listings.jsp">Back</a>   
            <%
                //session.setAttribute("user", user);                
            %>
        </form> 
            <button class="button" type="button" onclick="location.href = 'salesItem.jsp'" > See other items </button>
    
   


    </body>
</html>
