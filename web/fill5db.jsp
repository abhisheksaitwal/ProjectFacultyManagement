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
String id=null;
String title1="",publish1="",volume1="";
String title2="",publish2="",volume2="";       
String title3="",publish3="",volume3="";
String title4="",publish4="",volume4="";
String title5="",publish5="",volume5="";
String title6="",publish6="",volume6="";
String title7="",publish7="",volume7="";
String title8="",publish8="",volume8="";
String title9="",publish9="",volume9="";
String title10="",publish10="",volume10="";

try
{
         id=session.getAttribute("id").toString();
         title1=request.getParameter("title1");
         publish1=request.getParameter("publish1");
         volume1=request.getParameter("volume1");
        
         title2=request.getParameter("title2");
         publish2=request.getParameter("publish2");
         volume2=request.getParameter("volume2");
        
         title3=request.getParameter("title3");
         publish3=request.getParameter("publish3");
         volume3=request.getParameter("volume3");
        
         title4=request.getParameter("title4");
         publish4=request.getParameter("publish4");
         volume4=request.getParameter("volume4");
        
         title5=request.getParameter("title5");
         publish5=request.getParameter("publish5");
         volume5=request.getParameter("volume5");
        
         title6=request.getParameter("title6");
         publish6=request.getParameter("publish6");
         volume6=request.getParameter("volume6");
        
         title7=request.getParameter("title7");
         publish7=request.getParameter("publish7");
         volume7=request.getParameter("volume7");
        
         title8=request.getParameter("title8");
         publish8=request.getParameter("publish8");
         volume8=request.getParameter("volume8");
         
         title9=request.getParameter("title9");
         publish9=request.getParameter("publish9");
         volume9=request.getParameter("volume9");
        
         title10=request.getParameter("title10");
         publish10=request.getParameter("publish10");
         volume10=request.getParameter("volume10");
        
    
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        stmt1=con.createStatement();
        out.println("Trying to make statement...");
        ps=con.prepareStatement("update esdl.fill_info set title1=?,publish1=?,volume1=?,title2=?,publish2=?,volume2=?,title3=?,publish3=?,volume3=?,title4=?,publish4=?,volume4=?,title5=?,publish5=?,volume5=?,title6=?,publish6=?,volume6=?,title7=?,publish7=?,volume7=?,title8=?,publish8=?,volume8=?,title9=?,publish9=?,volume9=?,title10=?,publish10=?,volume10=? where id=?");
                 
            
            ps.setString(1,title1);
            ps.setString(2,publish1);
            ps.setString(3,volume1);
            
            ps.setString(4,title2);
            ps.setString(5,publish2);
            ps.setString(6,volume2);
            
            ps.setString(7,title3);
            ps.setString(8,publish3);
            ps.setString(9,volume3);
            
            ps.setString(10,title4);
            ps.setString(11,publish4);
            ps.setString(12,volume4);
            
            ps.setString(13,title5);
            ps.setString(14,publish5);
            ps.setString(15,volume5);
           
            ps.setString(16,title6);
            ps.setString(17,publish6);
            ps.setString(18,volume6);
           
            ps.setString(19,title7);
            ps.setString(20,publish7);
            ps.setString(21,volume7);
            
            ps.setString(22,title8);
            ps.setString(23,publish8);
            ps.setString(24,volume8);
            
            ps.setString(25,title9);
            ps.setString(26,publish9);
            ps.setString(27,volume9);
            
            ps.setString(28,title10);
            ps.setString(29,publish10);
            ps.setString(30,volume10);
            
            ps.setString(31,id);
            
            ps.executeUpdate();
            response.sendRedirect("fill6.jsp");
       
               }
catch(Exception e)
{  
    out.println(e);
}

%>
</body>
</html>