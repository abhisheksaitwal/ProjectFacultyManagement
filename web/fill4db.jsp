<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>fill database for page #4</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null,stmt1=null;
PreparedStatement ps=null;
String id=null,sub1="",class1="",res1="";
String sub2="",class2="",res2="";
String sub3="",class3="",res3="";
String sub4="",class4="",res4="";
String sub5="",class5="",res5="";
String sub6="",class6="",res6="";
String sub7="",class7="",res7="";
String sub8="",class8="",res8="";
       
        
try
{
         id=session.getAttribute("id").toString();
        sub1=request.getParameter("sub1");
        class1=request.getParameter("class1");
        res1=request.getParameter("res1");
        
        sub2=request.getParameter("sub2");
        class2=request.getParameter("class2");
        res2=request.getParameter("res2");
        
        sub3=request.getParameter("sub3");
        class3=request.getParameter("class3");
        res3=request.getParameter("res3");
       
        sub4=request.getParameter("sub4");
        class4=request.getParameter("class4");
        res4=request.getParameter("res4");
        
        sub5=request.getParameter("sub5");
        class5=request.getParameter("class5");
        res5=request.getParameter("res5");
        
        sub6=request.getParameter("sub6");
        class6=request.getParameter("class6");
        res6=request.getParameter("res6");
        
        sub7=request.getParameter("sub7");
        class7=request.getParameter("class7");
        res7=request.getParameter("res7");
        
        sub8=request.getParameter("sub8");
        class8=request.getParameter("class8");
        res8=request.getParameter("res8");

        
    
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        stmt1=con.createStatement();
        
        ps=con.prepareStatement("update esdl.fill_info set sub1=?,class1=?,res1=?,sub2=?,class2=?,res2=?,sub3=?,class3=?,res3=?,sub4=?,class4=?,res4=?,sub5=?,class5=?,res5=?,sub6=?,class6=?,res6=?,sub7=?,class7=?,res7=?,sub8=?,class8=?,res8=? where id=?");
                 
            
            ps.setString(1,sub1);
            ps.setString(2,class1);
            ps.setString(3,res1);
            
            ps.setString(4,sub2);
            ps.setString(5,class2);
            ps.setString(6,res2);
            
            ps.setString(7,sub3);
            ps.setString(8,class3);
            ps.setString(9,res3);
           
            ps.setString(10,sub4);
            ps.setString(11,class4);
            ps.setString(12,res4);
            
            ps.setString(13,sub5);
            ps.setString(14,class5);
            ps.setString(15,res5);
            
            ps.setString(16,sub6);
            ps.setString(17,class6);
            ps.setString(18,res6);
            
            ps.setString(19,sub7);
            ps.setString(20,class7);
            ps.setString(21,res7);
            
            ps.setString(22,sub8);
            ps.setString(23,class8);
            ps.setString(24,res8);
            
            ps.setString(25,id);
            
            ps.executeUpdate();
            response.sendRedirect("fill5.jsp");
       
                }
catch(Exception e)
{  
    out.println(e);
}

%>
</body>
</html>