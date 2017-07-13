<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fill database for page #1</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null,stmt1=null;
PreparedStatement ps=null;
String id=null,fname=null,mname=null,lname=null,gen=null,birth=null,bg=null,address=null;
       
try
{
         id=session.getAttribute("id").toString();
         fname=request.getParameter("fname");
         mname=request.getParameter("mname");
         lname=request.getParameter("lname");
         gen=request.getParameter("gen");
         birth=request.getParameter("birth");
         bg=request.getParameter("bg"); 
         address=request.getParameter("address");
    
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        stmt1=con.createStatement();
        out.println("Trying to make statement...");
        ps=con.prepareStatement("update esdl.fill_info set fname=?,mname=?,lname=?,gen=?,birth=?,bg=?,address=? where id=?");
                 
            
            ps.setString(1,fname);
            ps.setString(2,mname);
            ps.setString(3,lname);
            ps.setString(4,gen);
            ps.setString(5,birth);
            ps.setString(6,bg);
            ps.setString(7,address);
            ps.setString(8,id);
            
            ps.executeUpdate();
            response.sendRedirect("fill2.jsp");
       
      
}
catch(Exception e)
{  
    out.println(e);
}

%>
</body>
</html>