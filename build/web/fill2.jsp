<!doctype html>
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Fill Information...2</title>
<link rel="stylesheet" href="css/styles.css" type="text/css" />
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>


<body>
    <%! String id;
        String str[]=new String[40];
        Connection con=null;
        ResultSet rs=null;
        Statement stmt=null,stmt1=null;
        PreparedStatement ps=null;
        
        %>
        
        <% 
        try{
            id=session.getAttribute("id").toString();
            Class.forName("org.apache.derby.jdbc.ClientDriver");	
            con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
            stmt=con.createStatement();
            stmt1=con.createStatement();
           
            rs=stmt.executeQuery("select * from esdl.fill_info where id='"+id+"'");
            if(rs.next()==false)    //if false then no data available
            {
                stmt1.executeUpdate("insert into esdl.fill_info(id) values('"+id+"')");
        
            }
            else
            {    
                str[0]=rs.getString(1);
                str[1]=rs.getString(7);
                str[2]=rs.getString(8);
                str[3]=rs.getString(10);
                str[4]=rs.getString(11);
                str[5]=rs.getString(12);
                str[6]=rs.getString(112);
              }
        %>
        <form method="post" action="fill2db.jsp">
    
<section id="body" class="width">
<aside id="sidebar" class="column-left">

<header>
<h1><a href="#">Employee</a></h1>
</header>

    <nav id="mainnav">
<ul>
    <li><a href="fill1.jsp">Personal Information</a></li>
<li class="selected-item"><a href="fill2.jsp">Official Information</a></li>
<li><a href="fill3.jsp">Educational Details</a></li>
<li><a href="fill4.jsp">Subjects Details</a></li>
<li><a href="fill5.jsp">Paper Publication Details</a></li>
<li><a href="fill6.jsp">Extra Curricular Activities</a></li>
</ul>
</nav>

	</aside>
	<section id="content" class="column-right">
        <article>
            <h2>Official Information</h2>     
        </article>
	<fieldset>
<article class="expanded">
<p>
Date Of Joining* :
 <input type="date"  class="element3"  value="<%= str[4] %>" name="doj" id="date" placeholder="Date"  size="35" />
  
Contact No:&nbsp<input type="text" class="element02" value="<%= str[2] %>" name="num" pattern="[7-9]{1}[0-9]{9}" title="Phone Number With 7-9 And Remainnig 9 Digit With 0-9" required >

    EMailID:&nbsp <input type="email" class="element01" name="email" value="<%= str[1] %>" required>
</p>      

<br>
Designation:
<input type="text"  class="element3" value="<%= str[6] %>" name="desig1" list="desig1" placeholder="Select Your Designation" size="35" />

<datalist id="desig1">
   <option value="Managing Director">Hod</option>
   <option value="General Manager">Teacher</option>
   <option value="Asst.General Manager">Asst.Professor</option>
</datalist>


Qualification:
<input type="text"  class="element3" value="<%= str[3] %>" name="qua" list="qua" placeholder="Select The Degree"  size="35"/>
<datalist id="qua">
   <option value="M.E">M.E</option>
   <option value="M.Tech">M.Tech</option>
   <option value="B.E">B.E</option>
   <option value="B.Tech">B.Tech</option>  
   <option value="MBA">MBA</option>
   <option value="PHD">PHD</option> 
</datalist>
<br>
<br>
<p>
Area Of Interest:<br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<textarea class="element1" value="<%= str[5] %>" name="area" rows="30" cols="60" size="40"></textarea>
</p>

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
