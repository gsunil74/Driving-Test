<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration Page for Driving Test</title>
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
    margin-left: 75px;
}

</style>
</head>
<body>
    <div id="login">
        <h1><strong>Welcome.</strong> Please register.</h1>
        <form method="post" action="registration.jsp">
            <fieldset>
                <p id="radio"><input type="radio" name="user_type" value="admin"><b>Admin</b>
                <input type="radio" name="user_type" value="user"><b>User</b></p>
                <p><label><b>First Name</b></label><input type="text" name="fname" value="" required></p>
                <p><label><b>Last Name</b></label><input type="text" name="lname" value="" required></p>
                <p><label><b>Email </b><br></label><input type="text" name="email" value=""></p>
                <p><label><b>User Name</b></label><input type="text" name="uname" value="" required></p>
                <p><label><b>Password</b><br></label><input type="password" name="pass" value="" required></p>
                <p><input type="submit" value="Register"></p>
                <p><input type="reset" value="reset"></p>
            </fieldset>
        </form>
    </div>
</body>
</html>