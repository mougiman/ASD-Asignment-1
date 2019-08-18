<%-- 
    Document   : formsubmit
    Created on : 2019-8-18, 16:08:17
    Author     : Chenkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <%
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        %>
    </head>
    <body>
        <p>Welcom user: <%=name%></p>
         <p class="form_title">Your account information has been submitted</p>
        <table class="table">
            <tr><td>Name: </td><td class="text"><%=name%></td></tr>
            <tr><td>Email: </td><td class="text"><%=email%></td></tr>
            <tr><td>Password: </td><td class="text"><%= password%></td></tr>
            <tr><td>Phone Num: </td><td class="text"><%=phone%></td></tr>
        </table>       
    </body>
    <p class="p">Click <a href="index.jsp" target="_blank"> here </a> to go to main page.</p>
    </body>
    <%
        
    %>
</html>
