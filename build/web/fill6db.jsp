<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fill database for page #6</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null,stmt1=null;
PreparedStatement ps=null;
String id=null;
String activity1="",level1="",role1="";
String activity2="",level2="",role2="";       
String activity3="",level3="",role3="";
String activity4="",level4="",role4="";
String activity5="",level5="",role5="";
String activity6="",level6="",role6="";
String activity7="",level7="",role7="";
String activity8="",level8="",role8="";
try
{
        id=session.getAttribute("id").toString();
         
         activity1=request.getParameter("activity1");
         level1=request.getParameter("level1");
         role1=request.getParameter("role1");
        
         activity2=request.getParameter("activity2");
         level2=request.getParameter("level2");
         role2=request.getParameter("role2");
        
         activity3=request.getParameter("activity3");
         level3=request.getParameter("level3");
         role3=request.getParameter("role3");
        
         activity4=request.getParameter("activity4");
         level4=request.getParameter("level4");
         role4=request.getParameter("role4");
        
         activity5=request.getParameter("activity5");
         level5=request.getParameter("level5");
         role5=request.getParameter("role5");
        
         activity6=request.getParameter("activity6");
         level6=request.getParameter("level6");
         role6=request.getParameter("role6");
         
         activity7=request.getParameter("activity7");
         level7=request.getParameter("level7");
         role7=request.getParameter("role7");
          
          activity8=request.getParameter("activity8");
          level8=request.getParameter("level8");
          role8=request.getParameter("role8");
        
    
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        stmt1=con.createStatement();
        
        ps=con.prepareStatement("update esdl.fill_info set activity1=?,level1=?,role1=?,activity2=?,level2=?,role2=?,activity3=?,level3=?,role3=?,activity4=?,level4=?,role4=?,activity5=?,level5=?,role5=?,activity6=?,level6=?,role6=?,activity7=?,level7=?,role7=?,activity8=?,level8=?,role8=? where id=?");
                 
            
            ps.setString(1,activity1);
            ps.setString(2,level1);
            ps.setString(3,role1);
            
            ps.setString(4,activity2);
            ps.setString(5,level2);
            ps.setString(6,role2);
           
            ps.setString(7,activity3);
            ps.setString(8,level3);
            ps.setString(9,role3);
            
            ps.setString(10,activity4);
            ps.setString(11,level4);
            ps.setString(12,role4);
            
            ps.setString(13,activity5);
            ps.setString(14,level5);
            ps.setString(15,role5);
            
            ps.setString(16,activity6);
            ps.setString(17,level6);
            ps.setString(18,role6);
           
            ps.setString(19,activity7);
            ps.setString(20,level7);
            ps.setString(21,role7);
            
            ps.setString(22,activity8);
            ps.setString(23,level8);
            ps.setString(24,role8);
            
            ps.setString(25,id);
            
            ps.executeUpdate();
            response.sendRedirect("success.jsp");
       
                }
catch(Exception e)
{  
    out.println(e);
}

%>
</body>
</html>