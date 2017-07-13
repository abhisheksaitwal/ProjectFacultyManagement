<!doctype html>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Fill Information...5</title>
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
                
                str[1]=rs.getString(58);
                str[2]=rs.getString(59);
                str[3]=rs.getString(60);
                
                str[4]=rs.getString(61);
                str[5]=rs.getString(62);
                str[6]=rs.getString(63);
                
                str[7]=rs.getString(64);
                str[8]=rs.getString(65);
                str[9]=rs.getString(66);
                
                str[10]=rs.getString(67);
                str[11]=rs.getString(68);
                str[12]=rs.getString(69);
                
                str[13]=rs.getString(70);
                str[14]=rs.getString(71);
                str[15]=rs.getString(72);
                
                str[16]=rs.getString(73);
                str[17]=rs.getString(74);
                str[18]=rs.getString(75);
                
                str[19]=rs.getString(76);
                str[20]=rs.getString(77);
                str[21]=rs.getString(78);
                
                str[22]=rs.getString(79);
                str[23]=rs.getString(80);
                str[24]=rs.getString(81);
                
                str[25]=rs.getString(82);
                str[26]=rs.getString(83);
                str[27]=rs.getString(84);
                
                str[28]=rs.getString(85);
                str[29]=rs.getString(86);
                str[30]=rs.getString(87);
               
              }
        %>
        <form method="post" action="fill5db.jsp">
    
<section id="body" class="width">
<aside id="sidebar" class="column-left">

<header>
<h1><a>Employee</a></h1>
</header>

    <nav id="mainnav">
<ul>
    <li><a href="fill1.jsp">Personal Information</a></li>
<li><a href="fill2.jsp">Official Information</a></li>
<li><a href="fill3.jsp">Educational Details</a></li>
<li><a href="fill4.jsp">Subjects Details</a></li>
<li class="selected-item"><a href="fill5.jsp">Paper Publication Details</a></li>
<li><a href="fill6.jsp">Extra Curricular Activities</a></li>
</ul>
</nav>

	</aside>
	<section id="content" class="column-right">
        <article>
        <h2>Paper Publication Details</h2>     
        </article>
	<fieldset>
<article class="expanded">



<table class="demo">
	
	<thead>
	<tr>
                <th>Sr.No.</th>
		<th>Title Of The Paper</th>
		<th>Name Of Conference/<br>Journal/Publisher</th>
		<th>Volume Issue,<br>ISBN Number,<br>Year Of Publication</th>
		
	</tr>
	</thead>
        <tbody>
	<tr>
                <td>1</td>
		<td><input type="text" name="title1"value="<%= str[1] %>" class="element6" ></td>
		<td><input type="text" name="publish1"value="<%= str[2] %>" class="element7" ></td>
		<td><input type="text" name="volume1"value="<%= str[3] %>"class="element8" ></td>
		
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" name="title2"value="<%= str[4] %>" class="element6" ></td>
		<td><input type="text" name="publish2"value="<%= str[5] %>" class="element7" ></td>
		<td><input type="text" name="volume2"value="<%= str[6] %>" class="element8" ></td>
	
	</tr>
	<tr>
                <td>3</td>
		<td><input type="text" name="title3"value="<%= str[7] %>" class="element6" ></td>
		<td><input type="text" name="publish3"value="<%= str[8] %>" class="element7" ></td>
		<td><input type="text" name="volume3"value="<%= str[9] %>"class="element8" ></td>
		
	</tr>
	<tr>    
                <td>4</td>
		<td><input type="text" name="title4" value="<%= str[10] %>"class="element6" ></td>
		<td><input type="text" name="publish4"value="<%= str[11] %>" class="element7" ></td>
		<td><input type="text" name="volume4" value="<%= str[12] %>"class="element8" ></td>
		
	</tr>
	<tr>
                <td>5</td>
		<td><input type="text" name="title5"value="<%= str[13] %>" class="element6" ></td>
		<td><input type="text" name="publish5"value="<%= str[14] %>" class="element7" ></td>
		<td><input type="text" name="volume5" value="<%= str[15] %>"class="element8" ></td>
                
	</tr>
        <tr>
                <td>6</td>
		<td><input type="text" name="title6"value="<%= str[16] %>" class="element6" ></td>
		<td><input type="text" name="publish6"value="<%= str[17] %>" class="element7" ></td>
		<td><input type="text" name="volume6"value="<%= str[18] %>" class="element8" ></td>
              
	</tr>
        <tr>
                <td>7</td>
		<td><input type="text" name="title7"value="<%= str[19] %>" class="element6" ></td>
		<td><input type="text" name="publish7"value="<%= str[20] %>" class="element7" ></td>
		<td><input type="text" name="volume7" value="<%= str[21] %>"class="element8" ></td>
              
	</tr>
        <tr>
                <td>8</td>
		<td><input type="text" name="title8" value="<%= str[22] %>"class="element6" ></td>
		<td><input type="text" name="publish8"value="<%= str[23] %>" class="element7" ></td>
		<td><input type="text" name="volume8"value="<%= str[24] %>" class="element8"></td>
              
	</tr>
        <tr>
                <td>9</td>
		<td><input type="text" name="title9"value="<%= str[25] %>" class="element6"></td>
		<td><input type="text" name="publish9"value="<%= str[26] %>" class="element7"></td>
		<td><input type="text" name="volume9"value="<%= str[27] %>" class="element8"></td>
              
	</tr>
        <tr>
                <td>10</td>
		<td><input type="text" name="title10" value="<%= str[28] %>"class="element6"></td>
		<td><input type="text" name="publish10" value="<%= str[29] %>"class="element7"></td>
		<td><input type="text" name="volume10"value="<%= str[30] %>" class="element8"></td>
              
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
