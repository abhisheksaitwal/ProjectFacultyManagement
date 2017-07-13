<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" 
    import="java.io.*"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Show Info</title>
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
        rs=stmt.executeQuery("select * from esdl.fill_info where fill_info.id='"+id+"'");
        if(rs.next()!=false) 
        {
                session.setAttribute("id",id);
                response.sendRedirect("fetch1.jsp");
        }
        else
        {    }
}
catch(Exception e)
{
    out.println("ERROR=="+e);
}

%>
</body>
</html>