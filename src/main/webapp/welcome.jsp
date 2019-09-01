<%-- 
    Document   : welcome
    Created on : 2019-8-18, 16:08:17
    Author     : Chenkun
--%>
<%@page import="asd.demo.model.dao.MongoDBConnector"%>
<%@page import="asd.demo.controller.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.Random"%>
<%@page contentType="text/html" import="java.util.*" import="asd.demo.model.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        <style>
            body{
                background-color: beige;
                    margin: 0;
            }
        </style>
        <%
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        int key = (new Random()).nextInt(999999);
        String ID = "" + key;
        MongoDBConnector connector = new MongoDBConnector();
        connector.addUser(ID, name, email, password,phone);

        //User user = new User(name, email, password, phone);
        //DBManager manager = (DBManager) session.getAttribute("user");      
        %>
    </head>
    <body>
         <p class="form_title">Registerd successfully</p>
         <p>Welcom user: <%=name%></p>
         <div class="account">
        </div>         
        <p>Click <a href="index.jsp" style="color: dodgerblue">here </a> to homepage</p>
    </body>
 
</html>
