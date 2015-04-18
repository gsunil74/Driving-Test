<%-- 
    Document   : success
    Created on : 14-Apr-2015, 10:52:31 PM
    Author     : c0631942
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page for Driving Test</title>
<style type="text/css">
body 
{
    background-color: #f4f4f4;
    color: #5a5656;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    font-size: 16px;
    line-height: 1.5em;
}

a 
{ 
    text-decoration: none; 
}

h1 
{ 
    font-size: 1em; 
}

h1, p 
{
    margin-bottom: 10px;
}

strong 
{
    font-weight: bold;
}

.uppercase 
{ 
    text-transform: uppercase; 
}

#login 
{
    margin: 50px auto;
    width: 312px;
}

form fieldset input[type="text"], input[type="password"] 
{
    background-color: #e5e5e5;
    border: none;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    color: #5a5656;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    font-size: 14px;
    height: 50px;
    outline: none;
    padding: 0px 10px;
    width: 280px;
    -webkit-appearance:none;
}

form fieldset input[type="submit"], input[type="reset"] 
{
    background-color: #008dde;
    border: none;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    color: #f4f4f4;
    cursor: pointer;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    height: 50px;
    text-transform: uppercase;
    width: 300px;
    -webkit-appearance:none;
}

form fieldset a 
{
    color: #5a5656;
    font-size: 10px;
}

form fieldset a:hover 
{ 
    text-decoration: underline; 
}

select
{
    background-color: #e5e5e5;
    border: none;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
    color: #5a5656;
    font-family: 'Open Sans', Arial, Helvetica, sans-serif;
    font-size: 14px;
    height: 50px;
    outline: none;
    padding: 0px 10px;
    width: 300px;
    -webkit-appearance:none;
}

#radio
{
    margin-left: 70px;
}

</style>
</head>
<body>
    <div id="login">
	<h1><strong>Welcome.</strong> Please login.</h1>
	<form method="post" action="login.jsp">
            <fieldset>
                <p id="radio"><input type="radio" name="user_type" value="admin"><b>Admin</b>
                <input type="radio" name="user_type" value="user"><b>User</b></p>
                <p><label><b>User Name</b></label><input type="text" name="uname"  required></p>
                <p><label><b>Password  </b></label><input type="password" name="pass"  required></p>
		<p><a href="#">Forgot Password?</a></p>
		<p><input type="submit" value="Login"></p>
                <p><input type="reset" value="reset"></p>
                <p><a href="reg.jsp">New User Registration?</a></p>
            </fieldset>
	</form>
    </div>
</body>
</html>
