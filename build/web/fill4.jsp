<!doctype html>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Fill Information...4</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<link rel="stylesheet" href="css/demo.css" type="text/css" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>


<body>
    <%! String eid;
        String str[]=new String[40];
        Connection con=null;
        ResultSet rs=null;
        Statement stmt=null,stmt1=null;
        PreparedStatement ps=null;
        
        %>
        
        <% 
        try{
            eid=session.getAttribute("id").toString();
            Class.forName("org.apache.derby.jdbc.ClientDriver");	
            con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
            stmt=con.createStatement();
            stmt1=con.createStatement();
           
            rs=stmt.executeQuery("select * from esdl.fill_info where id='"+eid+"'");
            if(rs.next()==false)    //if false then no data available
            {
                stmt1.executeUpdate("insert into esdl.fill_info(id) values('"+eid+"')");
        
            }
            else
            {    
              
                str[0]=rs.getString(1);
                
                str[1]=rs.getString(34);
                str[2]=rs.getString(35);
                str[3]=rs.getString(36);
                
                str[4]=rs.getString(37);
                str[5]=rs.getString(38);
                str[6]=rs.getString(39);
                
                str[7]=rs.getString(40);
                str[8]=rs.getString(41);
                str[9]=rs.getString(42);
                
                str[10]=rs.getString(43);
                str[11]=rs.getString(44);
                str[12]=rs.getString(45);
                
                str[13]=rs.getString(46);
                str[14]=rs.getString(47);
                str[15]=rs.getString(48);
                
                str[16]=rs.getString(49);
                str[17]=rs.getString(50);
                str[18]=rs.getString(51);
                
                str[19]=rs.getString(52);
                str[20]=rs.getString(53);
                str[21]=rs.getString(54);
                
                str[22]=rs.getString(55);
                str[23]=rs.getString(56);
                str[24]=rs.getString(57);
               
              }
        %>
        <form method="post" action="fill4db.jsp">
    
<section id="body" class="width">
<aside id="sidebar" class="column-left">

<header>
<h1><a href="fill4db.jsp">Employee</a></h1>
</header>

    <nav id="mainnav">
<ul>
    <li><a href="fill1.jsp">Personal Information</a></li>
<li><a href="fill2.jsp">Official Information</a></li>
<li><a href="fill3.jsp">Educational Details</a></li>
<li class="selected-item"><a href="fill4.jsp">Subjects Details</a></li>
<li><a href="fill5.jsp">Paper Publication Details</a></li>
<li><a href="fill6.jsp">Extra Curricular Activities</a></li>
</ul>
</nav>

	</aside>
	<section id="content" class="column-right">
        <article>
            <h2>Subject Details</h2>     
        </article>
	<fieldset>
<article class="expanded">



<table class="demo">
	
	<thead>
	<tr>
                <th>Sr.No.</th>
		<th>Subject Taught</th>
		<th>class</th>
		<th>Result</th>
                
	</tr>
	</thead>
	<tbody>
	<tr>    
                <td>1</td>
		<td><input type="text" class="element4" value="<%= str[1] %>" name="sub1" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[2] %>" name="class1"></td>
		<td><input type="text" class="element21" value="<%= str[3] %>" name="res1"></td>
		
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" class="element4" value="<%= str[4] %>" name="sub2" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[5] %>" name="class2"></td>
		<td><input type="text" class="element21" value="<%= str[6] %>" name="res2"></td>
		
	</tr>
	<tr>
                <td>3</td>
                <td><input type="text" class="element4" value="<%= str[7] %>" name="sub3" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[8] %>" name="class3"></td>
		<td><input type="text" class="element21" value="<%= str[9] %>" name="res3"></td>
		
	</tr>
	<tr>
                <td>4</td>
		<td><input type="text" class="element4" value="<%= str[10] %>" name="sub4" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[11] %>" name="class4"></td>
		<td><input type="text" class="element21" value="<%= str[12] %>" name="res4"></td>
		
	</tr>
	<tr>
                <td>5</td>
		<td><input type="text" class="element4" value="<%= str[13] %>" name="sub5" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[14] %>" name="class5"></td>
                <td><input type="text" class="element21" value="<%= str[15] %>" name="res5"></td>
              
	</tr>
        <tr>
                <td>6</td>
		<td><input type="text" class="element4" value="<%= str[16] %>" name="sub6" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[17] %>" name="class6"></td>
                <td><input type="text" class="element21" value="<%= str[18] %>" name="res6"></td>
               
	</tr>
        <tr>
                <td>7</td>
		<td><input type="text" class="element4" value="<%= str[19] %>" name="sub7" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[20] %>" name="class7"></td>
                <td><input type="text" class="element21" value="<%= str[21] %>" name="res7"></td>
	</tr>
        <tr>
                <td>8</td>
		<td><input type="text" class="element4" value="<%= str[22] %>" name="sub8" size="45"></td>
		<td><input type="text" class="element21" value="<%= str[23] %>" name="class8"></td>
                <td><input type="text" class="element21" value="<%= str[24] %>" name="res8"></td>
	</tr>
        
	<tbody>
</table>


<br>
<br>

<p><a><input type="submit" class="button" name="saveandcontinue" value="Save & Continue" ></a></P>


</article>
	</fieldset>

			
			

		</section>

		<div class="clear"></div>

	</section>
	
</form>
    <%
    
        }
        catch(Exception e)
        {
            out.println(e);
        }
    
    %>
</body>
</html>
