<%-- 
    Document   : signup
    Created on : 13 Sep, 2016, 2:58:30 PM
    Author     : Mohit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta charset="utf-8">
<title>Sign Up</title>
<style type="text/css">
body {

background-color: #f4f4f4;
color: #5a5656;
font-family: 'Open Sans', Arial, Helvetica, sans-serif;
font-size: 16px;
line-height: 1.5em;
}
a { text-decoration: none; }
h1 { font-size: 1em; }
h1, p {
margin-bottom: 15px;
}
strong {
font-weight: bold;
}
.uppercase { text-transform: uppercase; }

/* ---------- LOGIN ---------- */
#login {
margin: 150px auto;
width: 300px;
}
form fieldset input[type="text"], input[type="password"] {
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
form fieldset input[type="submit"] {
background-color: #80B763;
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
form fieldset a {
color: #5a5656;
font-size: 10px;
}
form fieldset a:hover { text-decoration: underline; }




</style>
</head>

<body>
<div id="login">
<h1><strong>Welcome.</strong> Please Sign Up.</h1>
<form action="signupcheck.jsp" method="post">
<fieldset>
<p><input type="text" name="id" required placeholder="Employee id Eg.0000"></p>
<p><input type="password" name="pass1" required placeholder="Password"></p>
<p><input type="password" name="pass2" required placeholder="Confirm Password"></p>

<p><input type="submit" value="Sign Up"></p>
<font size="2"><a href="login.jsp">Login Here</a></font>
</fieldset>
</form>
</div>
</body>
</html>