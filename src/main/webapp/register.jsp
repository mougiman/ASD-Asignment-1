<%-- 
    Document   : Register
    Created on : 16/08/2019, 15:30:43 AM
    Author     : Chenkun
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="asd.demo.controller.*" %>

<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/register.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"</script>
        <script type=text/javascript> type="text/javascript"></script>
        <script src ="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.1/dist/jquery.validate.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#registerform').validate({
                    rules:{
                        username:{
                            required: true,
                            textonly: true,
                            minlength: 5,
                            maxlength: 20
                        },
                       email:{
                            required: true,
                            email: true
                        },
                       password:{
                            required:true,
                            maxlength: 20,
                            minlength: 8
                       },
                       password2:{
                           required:true,
                           maxlength:20,
                           minlength:8,
                           equalTo:"#password"
                       },
                       phone:{
                           required: true,
                           digits: true,
                           minlength: 10 
                       }
                   }
                });
                jQuery.validator.addMethod("textonly", function(value, element) {
                    return this.optional( element ) || /^[A-Za-z\s]+$/.test( value );
                }, 'Please enter a valid name.');
            });

        </script>
    </head>
    <body>
        <div class="signup" >
            <h1>Create an account</h1>
            <form method="post" id="registerform" action="welcome.jsp">
            <div class="inputbox">
                <label>Full Name</label>
                <input type="text" name="username">   
            </div>
            <div class="inputbox">
                <label>Email</label>
                <input type="email" name="email">   
            </div>
            <div class="inputbox">
                <label>Password</label>
                <input id = "password" type="password" name="password">   
            </div>
            <div class="inputbox">
                <label>Confirm Password</label>
                <input type="password" name="password2">   
            </div>
            <div class="inputbox">
                <label>Phone Number</label>
                <input type="text" name="phone">   
            </div>
                <input type="submit" value="Register">
                <input type = "button" onclick="window.location.href='index.jsp'" value = "Cancle"/>
            </form>
        </div>
      <p>Already a member? <a href="login.jsp" style="color: dodgerblue">Sign in</a></p>
    </body>
</html>
