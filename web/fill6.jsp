<!doctype html>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Fill Information...1</title>
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
        try
        {
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
                
                str[1]=rs.getString(88);
                str[2]=rs.getString(89);
                str[3]=rs.getString(90);
                
                str[4]=rs.getString(91);
                str[5]=rs.getString(92);
                str[6]=rs.getString(93);
                
                str[7]=rs.getString(94);
                str[8]=rs.getString(95);
                str[9]=rs.getString(96);
                
                str[10]=rs.getString(97);
                str[11]=rs.getString(98);
                str[12]=rs.getString(99);
                
                str[13]=rs.getString(100);
                str[14]=rs.getString(101);
                str[15]=rs.getString(102);
                
                str[16]=rs.getString(103);
                str[17]=rs.getString(104);
                str[18]=rs.getString(105);
                
                str[19]=rs.getString(106);
                str[20]=rs.getString(107);
                str[21]=rs.getString(108);
                
                str[22]=rs.getString(109);
                str[23]=rs.getString(110);
                str[24]=rs.getString(111);
              }
    %>
    
    
        <form method="post" action="fill6db.jsp">
    
        <section id="body" class="width">
        <aside id="sidebar" class="column-left">

        <header>
        <h1><a href="#">Employee</a></h1>
        <h2>Management</h2>
        </header>

<nav id="mainnav">
    <ul>
        <li><a href="fill1.jsp">Personal Information</a></li>
        <li><a href="fill2.jsp">Official Information</a></li>
        <li><a href="fill3.jsp">Educational Details</a></li>
        <li><a href="fill4.jsp">Subjects Details</a></li>
        <li><a href="fill5.jsp">Paper Publication Details</a></li>
        <li class="selected-item"><a href="fill6.jsp">Extra Curricular Activities</a></li>
    </ul>
</nav>

	</aside>
	<section id="content" class="column-right">
            
        <article>
        <h2>Extra Curricular Activities</h2>     
        </article>
            
	<fieldset>

<article class="expanded">

<table class="demo">
	
	<thead>
	<tr>
                <th>Sr.No.</th>
		<th>Name Of Activity</th>
		<th>Level Of Activity</th>
		<th>Role</th>
		
	</tr>
	</thead>
<tbody>
	<tr>
                <td>1</td>
		<td><input type="text" class="element7" value="<%= str[1] %>"name="activity1"></td>
		<td><input type="text" class="element7" value="<%= str[2] %>"name="level1"></td>
		<td><input type="text" class="element7" value="<%= str[3] %>"name="role1"></td>
		
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" class="element7" value="<%= str[4] %>"name="activity2"></td>
		<td><input type="text" class="element7" value="<%= str[5] %>"name="level2"></td>
		<td><input type="text" class="element7" value="<%= str[6] %>"name="role2"></td>
	
	</tr>
	<tr>
                <td>3</td>
                <td><input type="text" class="element7" value="<%= str[7] %>"name="activity3"></td>
		<td><input type="text" class="element7" value="<%= str[8] %>"name="level3"></td>
		<td><input type="text" class="element7" value="<%= str[9] %>"name="role3"></td>
		
	</tr>
	<tr>    
                <td>4</td>
		<td><input type="text" class="element7" value="<%= str[10] %>"name="activity4"></td>
		<td><input type="text" class="element7" value="<%= str[11] %>"name="level4"></td>
		<td><input type="text" class="element7" value="<%= str[12] %>"name="role4"></td>
		
	</tr>
	<tr>
                <td>5</td>
		<td><input type="text" class="element7" value="<%= str[13] %>"name="activity5"></td>
		<td><input type="text" class="element7" value="<%= str[14] %>"name="level5"></td>
                <td><input type="text" class="element7" value="<%= str[15] %>"name="role5"></td>
                
	</tr>
        <tr>
                <td>6</td>
		<td><input type="text" class="element7" value="<%= str[16] %>"name="activity6"></td>
		<td><input type="text" class="element7" value="<%= str[17] %>"name="level6"></td>
                <td><input type="text" class="element7" value="<%= str[18] %>"name="role6"></td>
              
	</tr>
        <tr>
                <td>7</td>
		<td><input type="text" class="element7" value="<%= str[19] %>"name="activity7"></td>
		<td><input type="text" class="element7" value="<%= str[20] %>"name="level7"></td>
                <td><input type="text" class="element7" value="<%= str[21] %>"name="role7"></td>
              
	</tr>
        <tr>
                <td>8</td>
		<td><input type="text" class="element7"value="<%= str[22] %>" name="activity8"></td>
		<td><input type="text" class="element7"value="<%= str[23] %>" name="level8"></td>
                <td><input type="text" class="element7"value="<%= str[24] %>" name="role8"></td>
              
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
