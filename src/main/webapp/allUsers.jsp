<%-- 
    Document   : allUsers
    Created on : 26/08/2019, 5:33:41 PM
    Author     : Calvi
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="asd.demo.model.*"%>
<%@page import="asd.demo.model.dao.DBManager"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
            
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Users</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
        
        
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <% //Dummy data, will be replaced when database is fixed
            ArrayList <User> userList = new ArrayList<User>();
            userList.add(new User("john", "johnsmith@gmail.com", "1234", "0412933321"));
            userList.add(new User("john2", "johnsmith2@gmail.com", "12345", "0412944421"));
        %>
        <div class="container">
            <div class="row">
                <h>All Users</h>
            </div>
            <div class="row">
                <table>
                    <tr>
                       <th> Name</th>
                       <th> Email </th>
                       <th> Password</th>
                       <th> Phone </th>
                    </tr>
                    <% for(User user: userList){ %>
                        <tr>
                            <td>
                                <%=user.getName()%>
                            </td>
                            <td>
                                <%=user.getEmail()%>
                            </td>
                            <td>
                                <%=user.getPassword()%>
                            </td>
                            <td>
                                <%=user.getPhone()%>
                            </td>
                        </tr>
                    <% }%>
                </table>
            </div>
        </div>
    </body>
</html>
