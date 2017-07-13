	<!DOCTYPE html>
        <%@page import="java.sql.*" %>
<html>
<head>
<link href="css/hover.css" rel="stylesheet" media="all">
<link rel="stylesheet" href="css/style1.css" type="text/css" />
<style>
.demo {
		width:100%;
		border:1px solid #C0C0C0;
		border-collapse:collapse;
	}
	.demo caption {
		caption-side:top;
		text-align:left;
	}
	.demo th {
		border:1px solid #C0C0C0;
		background:#F0F0F0;
	}
	.demo td {
		border:1px solid #C0C0C0;
		text-align:left;
	}

table, th, td 
{
     border: 1px solid black;
     border-collapse: collapse;
     padding: 8px;
     text-align:center;
}
#header {
    background-color:black;
    color:white;
    font-size:160%;
    text-align:center;
    padding:5px;
}

.styled-button-9 {
	background: #00A0D1;
	background: -moz-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: -webkit-gradient(linear,left top,left bottom,color-stop(0%,#00A0D1),color-stop(100%,#008DB8));
	background: -webkit-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: -o-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: -ms-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: linear-gradient(top,#00A0D1 0%,#008DB8 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00A0D1',endColorstr='#008DB8',GradientType=0);
	padding:8px 20px;
	color:#cfebf3;
	font-family:'Helvetica Neue',sans-serif;
	font-size:16px;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border:1px solid #095B7E
}
</style>
</head>
<body>

  <%  
    int flag=0;
Connection con=null;
ResultSet rs=null;
Statement stmt=null;
PreparedStatement ps=null;
        String id=request.getParameter("id");
try
{
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        rs=stmt.executeQuery("select * from esdl.fill_info");
        //if(rs.next()==false) 
          // 
        
       
        
        out.println("<div id='page'><div id='logo'><h1><b><a>Employee Details</a></h1></div></div></b><div id='section'><br><br><center><table class='demo'><tr><th>Employee id</th><th>Name</th><th>Email Id</th></tr>");
        if(rs.next()!=false)    
        {
            out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" "+rs.getString(3)+" "+ rs.getString(4)+"</td><td>"+ rs.getString(7)+"</td></tr>");
            while(rs.next()!=false)
                out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" "+rs.getString(3)+" "+ rs.getString(4)+"</td><td>"+ rs.getString(7)+"</td></tr>");
            out.println("</center></table>");
        }
        else
            out.println("<center><h1>INCORRECT ID PROVIDED !</h1><br><br><a href='managerhome.jsp'>TRY ANOTHER</a></center>");
            
         
    
}

catch(Exception e)
{
    out.println("ERROR=="+e);
}
%>
<br>
<form action="managerhome.jsp" method="post">
    <input type="submit" class="button" value="Back" />
</form>
</body>
</html>