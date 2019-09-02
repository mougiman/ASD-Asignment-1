<%-- 
    Document   : itemPage
    Created on : 16/08/2019, 5:48:55 PM
    Author     : Calvin
--%>
<%@page import="java.util.Enumeration"%>
<%@page import="asd.demo.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Item Page</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
    <body>  
        <jsp:include page="header.jsp"/>
        
                    <% Item item = (Item) request.getAttribute("name");
                    %>  
        <div class="row">
            <div class="mainBox">
                <div class="col">
                    
                    <h><%=item.getName()%></h>
                    <p></p>
                    <img src="<%=item.getImage()%>" style="width:500px; height:400px;"/>
                    <div> Description </div>
                        <div> <%=item.getDescription()%> </div>
                        <div> Category: <%=item.getCategory()%> </div>
                        <div> Price: <%=item.getPrice()%> </div>
                        <div> Condition: <%=item.getCondition()%> </div>
                        <div> Color: <%=item.getColor()%> </div>
                        <div> Year Made: <%=item.getYearMade()%> </div>
                        <button type="button"> Buy Now! </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="userBox">
                            <div> Listed User: <%=item.getSellerID()%> </div>
                            <div> Listed Date: <%=item.getDateListed()%> </div>
                        </div>
                    </div>
                    
                    <!---
                    <h>1000 Piece Puzzle</h>
                    <p></p>
                    
                        <img src="puzzle-img.jpg" style="width:500px; height:400px;"/>
                            <h> <u><%//=item.getName()%></u> </h1>
                        <div> Description </div>
                        <div> A puzzle box with 1000 pieces. </div>
                        <div> Category: Toys/Games </div>
                        <div> Price: $10.00 </div>
                        <div> Condition: New </div>
                        <div> Color: Brown </div>
                        <div> Year Made: 2018 </div>
                        <br>
                        <button type="button"> Buy Now! </div>
                    </div>
                </div>
                <div class="col">
                    <div class="userBox">
                        <div> Listed User:<a href="viewUser.jsp">Calvin</a></div>
                        <div> Listed Date: 15/08/2019 </div>
                    </div>
                </div>--->
            </div>
        </div>
    </body>
</html>
