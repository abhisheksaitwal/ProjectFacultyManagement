<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.* "%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>filldatabase</title>
</head>
<body>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null;
PreparedStatement ps=null;
        String id=request.getParameter("empid");
        String fname=request.getParameter("firstname");
        String mname=request.getParameter("middlename");
        String lname=request.getParameter("lastname");
        String gen=request.getParameter("gender");
        String birth=request.getParameter("dob");
        String email=request.getParameter("emailid");
        String num=request.getParameter("number");
        String bg=request.getParameter("blood");
        String qua=request.getParameter("quali");
        String doj=request.getParameter("date1");
        String desig1=request.getParameter("designation");
        String area=request.getParameter("areaofinterst");
        String address=request.getParameter("address");
        
        String quali1=request.getParameter("quali1");
        String year1=request.getParameter("year1");
        String per1=request.getParameter("per1");
        String uni1=request.getParameter("uni1");
        
        String quali2=request.getParameter("quali2");
        String year2=request.getParameter("year2");
        String per2=request.getParameter("per2");
        String uni2=request.getParameter("uni2");
        
        String quali3=request.getParameter("quali3");
        String year3=request.getParameter("year3");
        String per3=request.getParameter("per3");
        String uni3=request.getParameter("uni3");
        
        String quali4=request.getParameter("quali4");
        String year4=request.getParameter("year4");
        String per4=request.getParameter("per4");
        String uni4=request.getParameter("uni4");
        
        String quali5=request.getParameter("quali5");
        String year5=request.getParameter("year5");
        String per5=request.getParameter("per5");
        String uni5=request.getParameter("uni5");
        
        String sub1=request.getParameter("sub1");
        String class1=request.getParameter("class1");
        String res1=request.getParameter("res1");
        
        String sub2=request.getParameter("sub2");
        String class2=request.getParameter("class2");
        String res2=request.getParameter("res2");
        
        String sub3=request.getParameter("sub3");
        String class3=request.getParameter("class3");
        String res3=request.getParameter("res3");
       
        String sub4=request.getParameter("sub4");
        String class4=request.getParameter("class4");
        String res4=request.getParameter("res4");
        
        String sub5=request.getParameter("sub5");
        String class5=request.getParameter("class5");
        String res5=request.getParameter("res5");
        
        String sub6=request.getParameter("sub6");
        String class6=request.getParameter("class6");
        String res6=request.getParameter("res6");
        
        String sub7=request.getParameter("sub7");
        String class7=request.getParameter("class7");
        String res7=request.getParameter("res7");
        
        String sub8=request.getParameter("sub8");
        String class8=request.getParameter("class8");
        String res8=request.getParameter("res8");
        
        String title1=request.getParameter("title1");
        String publish1=request.getParameter("publish1");
        String volume1=request.getParameter("volume1");
        
        String title2=request.getParameter("title2");
        String publish2=request.getParameter("publish2");
        String volume2=request.getParameter("volume2");
        
        String title3=request.getParameter("title3");
        String publish3=request.getParameter("publish3");
        String volume3=request.getParameter("volume3");
        
        String title4=request.getParameter("title4");
        String publish4=request.getParameter("publish4");
        String volume4=request.getParameter("volume4");
        
        String title5=request.getParameter("title5");
        String publish5=request.getParameter("publish5");
        String volume5=request.getParameter("volume5");
        
        String title6=request.getParameter("title6");
        String publish6=request.getParameter("publish6");
        String volume6=request.getParameter("volume6");
        
        String title7=request.getParameter("title7");
        String publish7=request.getParameter("publish7");
        String volume7=request.getParameter("volume7");
        
        String title8=request.getParameter("title8");
        String publish8=request.getParameter("publish8");
        String volume8=request.getParameter("volume8");
        
        String title9=request.getParameter("title9");
        String publish9=request.getParameter("publish9");
        String volume9=request.getParameter("volume9");
        
        String title10=request.getParameter("title10");
        String publish10=request.getParameter("publish10");
        String volume10=request.getParameter("volume10");
        
        String activity1=request.getParameter("activity1");
        String level1=request.getParameter("level1");
        String role1=request.getParameter("role1");
        
        String activity2=request.getParameter("activity2");
        String level2=request.getParameter("level2");
        String role2=request.getParameter("role2");
        
        String activity3=request.getParameter("activity3");
        String level3=request.getParameter("level3");
        String role3=request.getParameter("role3");
        
        String activity4=request.getParameter("activity4");
        String level4=request.getParameter("level4");
        String role4=request.getParameter("role4");
        
        String activity5=request.getParameter("activity5");
        String level5=request.getParameter("level5");
        String role5=request.getParameter("role5");
        
        String activity6=request.getParameter("activity6");
        String level6=request.getParameter("level6");
        String role6=request.getParameter("role6");
        
        String activity7=request.getParameter("activity7");
        String level7=request.getParameter("level7");
        String role7=request.getParameter("role7");
        
        String activity8=request.getParameter("activity8");
        String level8=request.getParameter("level8");
        String role8=request.getParameter("role8");
        
      
try
{
	Class.forName("org.apache.derby.jdbc.ClientDriver");	
	con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	stmt=con.createStatement();
        out.println("Trying to make statement...");
            ps=con.prepareStatement("insert into esdl.fill_info values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            
            ps.setString(1,id);
            ps.setString(2,fname);
            ps.setString(3,mname);
            ps.setString(4,lname);
            ps.setString(5,gen);
            ps.setString(6,birth);
            ps.setString(7,email);
            ps.setString(8,num);
            ps.setString(9,bg);
            ps.setString(10,qua);
            ps.setString(11,doj);
            ps.setString(112,desig1);
            ps.setString(12,area);
            ps.setString(13,address);
            
            ps.setString(14,quali1);
            ps.setString(15,year1);
            ps.setString(16,per1);
            ps.setString(17,uni1);
            
            ps.setString(18,quali2);
            ps.setString(19,year2);
            ps.setString(20,per2);
            ps.setString(21,uni2);
            
            
            ps.setString(22,quali3);
            ps.setString(23,year3);
            ps.setString(24,per3);
            ps.setString(25,uni3);
            
            
            ps.setString(26,quali4);
            ps.setString(27,year4);
            ps.setString(28,per4);
            ps.setString(29,uni4);
            
            ps.setString(30,quali5);
            ps.setString(31,year5);
            ps.setString(32,per5);
            ps.setString(33,uni5);
            
            
            
            ps.setString(34,sub1);
            ps.setString(35,class1);
            ps.setString(36,res1);
            
            ps.setString(37,sub2);
            ps.setString(38,class2);
            ps.setString(39,res2);
            
            ps.setString(40,sub3);
            ps.setString(41,class3);
            ps.setString(42,res3);
           
            ps.setString(43,sub4);
            ps.setString(44,class4);
            ps.setString(45,res4);
            
            ps.setString(46,sub5);
            ps.setString(47,class5);
            ps.setString(48,res5);
            
            ps.setString(49,sub6);
            ps.setString(50,class6);
            ps.setString(51,res6);
            
            ps.setString(52,sub7);
            ps.setString(53,class7);
            ps.setString(54,res7);
            
            ps.setString(55,sub8);
            ps.setString(56,class8);
            ps.setString(57,res8);
           
            ps.setString(58,title1);
            ps.setString(59,publish1);
            ps.setString(60,volume1);
            
            ps.setString(61,title2);
            ps.setString(62,publish2);
            ps.setString(63,volume2);
            
            ps.setString(64,title3);
            ps.setString(65,publish3);
            ps.setString(66,volume3);
            
            ps.setString(67,title4);
            ps.setString(68,publish4);
            ps.setString(69,volume4);
            
            ps.setString(70,title5);
            ps.setString(71,publish5);
            ps.setString(72,volume5);
           
            ps.setString(73,title6);
            ps.setString(74,publish6);
            ps.setString(75,volume6);
           
            ps.setString(76,title7);
            ps.setString(77,publish7);
            ps.setString(78,volume7);
            
            ps.setString(79,title8);
            ps.setString(80,publish8);
            ps.setString(81,volume8);
            
            ps.setString(82,title9);
            ps.setString(83,publish9);
            ps.setString(84,volume9);
            
            ps.setString(85,title10);
            ps.setString(86,publish10);
            ps.setString(87,volume10);
            
            ps.setString(88,activity1);
            ps.setString(89,level1);
            ps.setString(90,role1);
            
            ps.setString(91,activity2);
            ps.setString(92,level2);
            ps.setString(93,role2);
           
            ps.setString(94,activity3);
            ps.setString(95,level3);
            ps.setString(96,role3);
            
            ps.setString(97,activity4);
            ps.setString(98,level4);
            ps.setString(99,role4);
            
            ps.setString(100,activity5);
            ps.setString(101,level5);
            ps.setString(102,role5);
            
            ps.setString(103,activity6);
            ps.setString(104,level6);
            ps.setString(105,role6);
           
             ps.setString(106,activity7);
            ps.setString(107,level7);
            ps.setString(108,role7);
            
             ps.setString(109,activity8);
            ps.setString(110,level8);
            ps.setString(111,role8);
           
            
            
            ps.executeUpdate();
          
con.close();
stmt.close();
out.println("<center><h1>DATA SUCCESSFULLY ENTERED !</h1><h2>Want to go HOMEPAGE</h2><br><br><font size=6><a href='homepage.jsp'>HOMEPAGE</a></font></center>");
}
catch(Exception e)
{
    out.println(e);
}

%>
</body>
</html>