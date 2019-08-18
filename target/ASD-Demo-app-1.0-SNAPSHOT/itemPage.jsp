<%-- 
    Document   : itemPage
    Created on : 16/08/2019, 5:48:55 PM
    Author     : Calvin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Item Page</title>
        <link rel="stylesheet" href="css/ASDStyle.css">
    </head>
    <body>  
        <jsp:include page="header.jsp"/>    
        <div class="row">
            <div class="mainBox">
                <div class="col">
                    <h>1000 Piece Puzzle</h> <!--- Will link to item info --->
                    <p></p>
                        <img src="puzzle-img.jpg" style="width:500px; height:400px;"/>
                        <h1> <u>Item Info</u> </h1>
                        <div> Description </div>
                        <div> A puzzle box with 1000 pieces. </div>
                        <div> Category: Toys/Games </div>
                        <div> Price: $10.00 </div>
                        <div> Condition: New </div>
                        <div> Year Made: 2018 </div>
                    </div>
                </div>
                <div class="col">
                    <div class="userBox">
                        <div> Listed User: Calvin </div> <!-- Will link to user's profile -->
                        <div> Reputation: 1 out of 5 * </div>
                        <div> Seller Location: Sydney </div>
                        <div> Listed Date: 15/08/2019 </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
