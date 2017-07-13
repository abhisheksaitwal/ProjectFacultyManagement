<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fill database for page #3</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null,stmt1=null;
PreparedStatement ps=null;
String id=null;
String quali1="Null",year1="Null",per1="Null",uni1="Null";
String quali2="Null",year2="Null",per2="Null",uni2="Null";
String quali3="Null",year3="Null",per3="Null",uni3="Null";
String quali4="Null",year4="Null",per4="Null",uni4="Null";
String quali5="Null",year5="Null",per5="Null",uni5="Null";
       
        
try
{
        id=session.getAttribute("id").toString();
        quali1=request.getParameter("quali1");
        year1=request.getParameter("year1");
        per1=request.getParameter("per1");
        uni1=request.getParameter("uni1");
        
        quali2=request.getParameter("quali2");
        year2=request.getParameter("year2");
        per2=request.getParameter("per2");
        uni2=request.getParameter("uni2");
        
        quali3=request.getParameter("quali3");
        year3=request.getParameter("year3");
        per3=request.getParameter("per3");
        uni3=request.getParameter("uni3");
        
        quali4=request.getParameter("quali4");
        year4=request.getParameter("year4");
        per4=request.getParameter("per4");
        uni4=request.getParameter("uni4");
        
        quali5=request.getParameter("quali5");
        year5=request.getParameter("year5");
        per5=request.getParameter("per5");
        uni5=request.getParameter("uni5");
        
    
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        stmt1=con.createStatement();
        out.println("Trying to make statement...");
        ps=con.prepareStatement("update esdl.fill_info set quali1=?,year1=?,per1=?,uni1=?,quali2=?,year2=?,per2=?,uni2=?,quali3=?,year3=?,per3=?,uni3=?,quali4=?,year4=?,per4=?,uni4=?,quali5=?,year5=?,per5=?,uni5=? where id=?");
                 
            
            ps.setString(1,quali1);
            ps.setString(2,year1);
            ps.setString(3,per1);
            ps.setString(4,uni1);
            
            ps.setString(5,quali2);
            ps.setString(6,year2);
            ps.setString(7,per2);
            ps.setString(8,uni2);
            
            
            ps.setString(9,quali3);
            ps.setString(10,year3);
            ps.setString(11,per3);
            ps.setString(12,uni3);
            
            
            ps.setString(13,quali4);
            ps.setString(14,year4);
            ps.setString(15,per4);
            ps.setString(16,uni4);
            
            ps.setString(17,quali5);
            ps.setString(18,year5);
            ps.setString(19,per5);
            ps.setString(20,uni5);
            
            ps.setString(21,id);
            
            ps.executeUpdate();
            response.sendRedirect("fill4.jsp");
       
                }
catch(Exception e)
{  
    out.println(e);
}

%>
</body>
</html>