<!doctype html>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Fill Information...3</title>
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
                str[1]=rs.getString(14);
                str[2]=rs.getString(15);
                str[3]=rs.getString(16);
                str[4]=rs.getString(17);
                str[5]=rs.getString(18);
                str[6]=rs.getString(19);
                str[7]=rs.getString(20);
                str[8]=rs.getString(21);
                str[9]=rs.getString(22);
                str[10]=rs.getString(23);
                str[11]=rs.getString(24);
                str[12]=rs.getString(25);
                str[13]=rs.getString(26);
                str[14]=rs.getString(27);
                str[15]=rs.getString(28);
                str[16]=rs.getString(29);
                str[17]=rs.getString(30);
                str[18]=rs.getString(31);
                str[19]=rs.getString(32);
                str[20]=rs.getString(33);
                
              }
        %>
        <form method="post" action="fill3db.jsp">
    
<section id="body" class="width">
<aside id="sidebar" class="column-left">

<header>
<h1><a href="fill3db.jsp">Employee</a></h1>
</header>

    <nav id="mainnav">
<ul>
    <li><a href="fill1.jsp">Personal Information</a></li>
<li><a href="fill2.jsp">Official Information</a></li>
<li class="selected-item"><a href="fill3.jsp">Educational Details</a></li>
<li><a href="fill4.jsp">Subjects Details</a></li>
<li><a href="fill5.jsp">Paper Publication Details</a></li>
<li><a href="fill6.jsp">Extra Curricular Activities</a></li>
</ul>
</nav>

	</aside>
	<section id="content" class="column-right">
        <article>
            <h2>Educational Details</h2>     
        </article>
	<fieldset>
<article class="expanded">
<table class="demo">
	
                   
	<thead>

	<tr>
                <th>Sr.no</th>
		<th>Degree/Certificate</th>
		<th>Year Of Passing</th>
		<th>Percentage</th>
		<th>University</th>
	</tr>
	</thead>
	<tbody>
	<tr>
                <td>1</td>
                <td><input type="text" class="element23" value="<%= str[1] %>" name="quali1" required></td>
		<td><input type="text" class="element22" value="<%= str[2] %>" name="year1"></td>
		<td><input type="text" class="element22" value="<%= str[3] %>" name="per1"></td>
		<td><input type="text" class="element23" value="<%= str[4] %>" name="uni1"></td>
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" class="element23" value="<%= str[5] %>" name="quali2"></td>
		<td><input type="text" class="element22" value="<%= str[6] %>"  name="year2"></td>
		<td><input type="text" class="element22" value="<%= str[7] %>"  name="per2"></td>
		<td><input type="text" class="element23" value="<%= str[8] %>" name="uni2"></td>
	</tr>
        
	<tr>
                <td>3</td>
                <td><input type="text" class="element23" value="<%= str[9] %>" name="quali3"></td>
		<td><input type="text" class="element22" value="<%= str[10] %>" name="year3"></td>
		<td><input type="text" class="element22" value="<%= str[11] %>"  name="per3"></td>
		<td><input type="text" class="element23" value="<%= str[12] %>" name="uni3"></td>
	</tr>
	<tr>
                <td>4</td>
		<td><input type="text" class="element23" value="<%= str[13] %>" name="quali4"></td>
		<td><input type="text" class="element22" value="<%= str[14] %>" name="year4"></td>
		<td><input type="text" class="element22" value="<%= str[15] %>"  name="per4"></td>
		<td><input type="text" class="element23" value="<%= str[16] %>" name="uni4"></td>
	</tr>
	<tr>
	
                <td>5</td>
		<td><input type="text"  class="element23" value="<%= str[17] %>" name="quali5"></td>
		<td><input type="text"  class="element22" value="<%= str[18] %>" name="year5"></td>
                <td><input type="text"  class="element22" value="<%= str[19] %>" name="per5"></td>
                <td><input type="text"  class="element23" value="<%= str[20] %>" name="uni5"></td>
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
