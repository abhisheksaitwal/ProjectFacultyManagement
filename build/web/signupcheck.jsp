<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.* "%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null;
PreparedStatement ps=null;
        String id=request.getParameter("id");
        String pass=request.getParameter("pass1");
try
{
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        
            ps=con.prepareStatement("insert into esdl.uid values(?,?)");
            
            ps.setString(1,id);
            ps.setString(2,pass);
            
            ps.executeUpdate();
           
            con.close();
            stmt.close();
            response.sendRedirect("login.jsp");
}
catch(Exception e)
{
    out.println("<center><h1>Account already exists....<br><br>Try another ID...</h1></center>");
}

%>
</body>
</html>