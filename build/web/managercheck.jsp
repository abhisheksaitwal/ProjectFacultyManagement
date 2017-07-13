<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" 
    import="java.io.*"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
    int flag=0;
    String id=session.getAttribute("id").toString();
    String pass=session.getAttribute("pass").toString();
Connection con=null;
ResultSet rs=null;
Statement stmt=null;
PreparedStatement ps=null;
try
{
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        rs=stmt.executeQuery("select * from uid");
            while(rs.next()!=false)
            {
            if(id.equals("##admin##") && pass.equals(rs.getString(2)))
            {
               flag=1; 
               break;
            }
            }
            if(flag==1)
            {
                response.sendRedirect("managerhome.jsp");
            }
            else
                out.println("<center><h1>INCORRECT USERNAME OR PASSWORD</h1><br><br><a href='login.jsp'>Retry LOGIN</a></center>");
        
}
catch(Exception e)
{
    out.println("ERROR=="+e);
}

%>
</body>
</html>