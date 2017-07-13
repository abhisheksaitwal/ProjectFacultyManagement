
<%@page import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Fill Information...1</title>
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
        try
        {
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
                str[1]=rs.getString(2);
                str[2]=rs.getString(3);
                str[3]=rs.getString(4);
                str[4]=rs.getString(5);
                str[5]=rs.getString(6);
                str[6]=rs.getString(9);
                str[7]=rs.getString(13);
              }
    %>
    
    
        <form method="post" action="fill1db.jsp">
    
        <section id="body" class="width">
        <aside id="sidebar" class="column-left">

        <header>
        <h1><a href="#">Employee</a></h1>
        <h2>Management</h2>
        </header>

<nav id="mainnav">
    <ul>
        <li class="selected-item"><a href="fill1.jsp">Personal Information</a></li>
        <li><a href="fill2.jsp">Official Information</a></li>
        <li><a href="fill3.jsp">Educational Details</a></li>
        <li><a href="fill4.jsp">Subjects Details</a></li>
        <li><a href="fill5.jsp">Paper Publication Details</a></li>
        <li><a href="fill6.jsp">Extra Curricular Activities</a></li>
    </ul>
</nav>

	</aside>
	<section id="content" class="column-right">
            
        <article>
        <h2>Personal Information</h2>     
        </article>
            
	<fieldset>

<article class="expanded">

<p>
    Employee Id *:<input type="text" class="element" name="empid" value=<%=id%> placeholder="000" required readonly/>
</p>
<p>
    
    
    
    First name *:<input type="text" class="element" name="fname" value="<%= str[1] %>" required >
    Middle name *:<input type="text" class="element" name="mname" value="<%= str[2] %>" required>
    Last name *:<input type="text" class="element" name="lname" value="<%= str[3] %>" required> 
</p>

<p>
    Gender*:
   
    <select class="element" name="gen" value="<%= str[4] %>" placeholder="Select Your Gender" required>
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      
    </select>
 </p>
 <p>
    Date Of Birth*:&nbsp<input type="date" class="element" value="<%= str[5] %>" name="birth">

    Blood Group:<input class="element" type="text" name="bg" value="<%= str[6] %>" placeholder="Enter The Blood Group"  size="15"/>
</p>


<p>
    Address*: <br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<textarea  class="element1" name="address" id="address" value="<%=str[7]%>" rows="10" cols="30" required  contenteditable ></textarea>
</p>
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
