<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fill database for page #2</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null,stmt1=null;
PreparedStatement ps=null;
String email=null,num=null,qua=null,doj=null,area=null,desig1=null;
    String id=null;   
        
try
{
         id=session.getAttribute("id").toString();
         email=request.getParameter("email");
         num=request.getParameter("num");
         qua=request.getParameter("qua");
         doj=request.getParameter("doj");
         area=request.getParameter("area");
         desig1=request.getParameter("desig1"); 
         
    
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        stmt1=con.createStatement();
        
        ps=con.prepareStatement("update esdl.fill_info set email=?,num=?,qua=?,doj=?,area=?,desig1=? where id=?");
                 
            
            ps.setString(1,email);
            ps.setString(2,num);
            ps.setString(3,qua);
            ps.setString(4,doj);
            ps.setString(5,area);
            ps.setString(6,desig1);
            
            ps.setString(7,id);
            
            ps.executeUpdate();
            response.sendRedirect("fill3.jsp");
       
            }
catch(Exception e)
{  
    out.println(e);
}

%>
</body>
</html>