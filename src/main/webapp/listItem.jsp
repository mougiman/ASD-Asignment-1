<%-- 
    Document   : listItem
    Created on : 11/08/2019, 3:29:51 PM
    Author     : Mougi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List an Item</title>
    </head>
    <body>
        <a href="index.jsp">Main</a>
        <h1><p>List an Item</p></h1>
         <!--If user is logged in then -->
        <form>
        <table>
            <tr>
                <td>
                    <p>Name:</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Image:</p>
                    <p>Will be implemented</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Category:</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Description:</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Condition</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Color:</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Pricing:</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr>
                <td>
                    <p>Postage:</p>
                </td>
                <td>
                    <input type="text" name="">
                </td>
            </tr>
            <tr><td></td><td>
                <!--If all nessacary forms are filled out then let user submit -->
                    <input type="submit" value="List Item">
                </td></tr>
        </table>
        </form>
        
    </body>
</html>
