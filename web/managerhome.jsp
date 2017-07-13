<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
<link href="css/hover.css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/style1.css" type="text/css" />
</head> 
<style>
            body{
                margin-top: 50px;
                margin-bottom: 10px;
            }
</style>
<body>
<div id="page">
                    <div id="logo">
                            <h1><b><a>Admin Page</a></b></h1>
                    </div>
	
    <form action="showinfo.jsp">
<p>
    <center>
    <br>
    <br>
    
        <b><font-size="25">FETCH THE INFORMATION :</font></b><br>
    <br>
        <font-size="20">Enter ID To Display The Information</font>
    
     <br>
     <br>
    <input type="text" class="element15" name="id" required>
    <br>
    <br>
    <input type="submit" value="Submit" class="button" name="submit" />
    </center>
</p>
    </form>
    
    
    
    <form action="listusers.jsp">
    <p>
    <center>
    <br>
    <br>
        <b><font-size="25">DO'NT KNOW THE EMPLOYEE ID</font></b><br>
    <br>
    
        <font-size="20">Click Here To Get The ID</font>
          <br>
            <br>
          <input type="submit" value="Get List" class="button" name="getlist" />     
    </center>
    </p>
   </form>
 
<br>
<br>
</body>
</html>
