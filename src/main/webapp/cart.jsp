<%-- 
    Document   : cart
    Created on : 2019-8-18, 16:38:31
    Author     : Chenkun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart</title>
        <style>
            body{
                background-color: beige;
                margin: 0;
            }
            
            input[type = "button"]{
               font-size: 20px;
               font-family: Arial sans-serif;
               background: transparent;
               border: none;
               outline: none;
               color: #fff;
               background: #00ff00;
               padding: 10px 20px;
               cursor: pointer;
               border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <h1>Empty</h1>
        <div>
        <input type = "button" onclick="window.location.href='index.jsp'" value = "Homepage"/>
        </div>
    </body>
</html>
