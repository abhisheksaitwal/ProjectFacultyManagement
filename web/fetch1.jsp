<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Fetching data...</title>
        <link href="css/hover.css" rel="stylesheet" media="all">
        <link rel="stylesheet" href="css/style1.css" type="text/css" />
<style>

.abc {
		width:90%;
		
		border:0px solid #C0C0C0;
		border-collapse:collapse;
		
		
	}
	.abc caption {
		caption-side:top;
		text-align:right;
		
	}
	.abc th {
		border:0px solid;
                  text-align:right;
		
	}
	.abc td {
		border:0px solid #C0C0C0;
		text-align:left;	
	}

.demo {
		width:100%;
		
		border:1px solid #C0C0C0;
		border-collapse:collapse;
		
		
	}
	.demo caption {
		caption-side:top;
		text-align:left;
		
	}
	.demo th {
		border:1px solid #C0C0C0;
                text-align: left;
		background:#F0F0F0;
	}
	.demo td {
		border:1px solid #C0C0C0;
		text-align:left;	
	}
        
table, th, td 
{
     border: 1px solid black;
     border-collapse: collapse;
     padding: 8px;
     text-align:center;
}


#header {
    background-color:black;
    color:white;
    font-size:160%;
    text-align:center;
    padding:5px;
}

.styled-button-9 {
	background: #00A0D1;
	background: -moz-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: -webkit-gradient(linear,left top,left bottom,color-stop(0%,#00A0D1),color-stop(100%,#008DB8));
	background: -webkit-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: -o-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: -ms-linear-gradient(top,#00A0D1 0%,#008DB8 100%);
	background: linear-gradient(top,#00A0D1 0%,#008DB8 100%);
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00A0D1',endColorstr='#008DB8',GradientType=0);
	padding:8px 20px;
	color:#cfebf3;
	font-family:'Helvetica Neue',sans-serif;
	font-size:16px;
	border-radius:5px;
	-moz-border-radius:5px;
	-webkit-border-radius:5px;
	border:1px solid #095B7E
}

</style>
</head>
    
    <body>
        <%! 
        
        String array[]=new String[40]; 
        
        
        %>
        <%
            try{
        String id=session.getAttribute("id").toString();
        Class.forName("org.apache.derby.jdbc.ClientDriver");	
        Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Employee;create=true","esdl","esdl");
	Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("Select * from esdl.fill_info where id='"+id+"'");
        if(rs.next()!=false)
        {
        %>

<div id="page">
		<div id="logo">
			<h1><b><a>Profile</a></b></h1>
		</div>
<br>
<br>


<table class ="abc">
    
  <tr>
    <th>Employee Id :</th>
    <td><%= rs.getString(1)%></td>
  </tr>
  <tr>
    <th>Name :</th>
    <td><%= rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)%></td>
  </tr>

  <tr>
    <th>Gender :</th>
    <td><%= rs.getString(5)%></td>
  </tr>

  <tr>
    <th>Date of Birth :</th>
    <td><%= rs.getString(6)%></td>
  </tr>

  <tr>
    <th>Email ID :</th>
    <td><%= rs.getString(7)%></td>
  </tr>

  <tr>
    <th>Contact Number :</th>
    <td><%= rs.getString(8)%></td>
  </tr>

  <tr>
    <th>Blood Group :</th>
    <td><%= rs.getString(9) %></td>
  </tr>

  <tr>
    <th>Academic Qualification :</th>
    <td><%= rs.getString(10)%></td>
  </tr>

  <tr>
    <th>Date Of Joining :</th>
    <td><%= rs.getString(11)%></td>
  </tr>

  <tr>
    <th>Designation :</th>
    <td><%= rs.getString(112)%></td>
  </tr>

  <tr>
    <th>Area Of Interest :</th>
    <td><%= rs.getString(12)%></td>
  </tr>

  <tr>
    <th>Address :</th>
    <td><%= rs.getString(13)%></td>
  </tr>
</table>
<br>
<br>
<br>


<%
    array[0]=rs.getString(14);
    array[1]=rs.getString(18);
    array[2]=rs.getString(22);
    array[3]=rs.getString(26);
    array[4]=rs.getString(30);
    
    array[5]=rs.getString(34);
    array[6]=rs.getString(37);
    array[7]=rs.getString(40);
    array[8]=rs.getString(43);
    array[9]=rs.getString(46);
    array[10]=rs.getString(49);
    array[11]=rs.getString(52);
    array[12]=rs.getString(55);
    array[13]=rs.getString(58);
    array[14]=rs.getString(61);
    array[15]=rs.getString(64);
    array[16]=rs.getString(67);
    array[17]=rs.getString(70);
    array[18]=rs.getString(73);
    array[19]=rs.getString(76);
    array[20]=rs.getString(79);
    array[21]=rs.getString(82);
    array[22]=rs.getString(85);
    array[23]=rs.getString(88);
    array[24]=rs.getString(91);
    array[25]=rs.getString(94);
    array[26]=rs.getString(97);
    array[27]=rs.getString(100);
    array[28]=rs.getString(103);
    array[29]=rs.getString(106);
    array[30]=rs.getString(109);

%>


 <table class ="demo">
    <b><font size="5">Education Details</font></b>
                 <br>
                 <br>
  <tr>
    <th>Sr.No</th>
    <th>Degree/Certificate</th>
    <th>Year Of Passing</th>
    <th>Percentage</th>
    <th>University</th>
  </tr>
  <% if(array[0].isEmpty()==false) { %>
  <tr>
   <td>1</td>
    
    <td><%= rs.getString(14)%></td>
    <td><%= rs.getString(15)%></td>
    <td><%= rs.getString(16)%></td>
    <td><%= rs.getString(17)%></td>
   
  </tr>
  <% } %>
  <% if(array[1].isEmpty()==false) { %>
           <tr>
          <td>2</td>
          <td><%= rs.getString(18)%></td>
          <td><%= rs.getString(19)%></td>
          <td><%= rs.getString(20)%></td>
          <td><%= rs.getString(21)%></td>
          </tr>
       <% } %>
  
 
      <% if(array[2].isEmpty()==false){%>
          <tr>
          <td>3</td>
          <td><%=rs.getString(22)%></td>
          <td><%=rs.getString(23)%></td>
          <td><%=rs.getString(24)%></td>
          <td><%=rs.getString(25)%></td>
          </tr>
          <%} %>
  
      
          <% if(array[3].isEmpty()==false){%>
          <tr>
          <td>4</td>
          <td><%=rs.getString(26)%></td>
          <td><%=rs.getString(27)%></td>
          <td><%=rs.getString(28)%></td>
          <td><%=rs.getString(29)%></td>
          </tr>
          <%} %>
          <% if(array[4].isEmpty()==false ){ %>
          <tr>
          <td>5</td>
          <td><%=rs.getString(30)%></td>
          <td><%=rs.getString(31)%></td>
          <td><%=rs.getString(32)%></td>
          <td><%=rs.getString(33)%></td>
          </tr>
          <%}%>  

</table>
<br>
<br>
<br>
<table class ="demo">
    <b><font size="5">List Of Subject Taught</font></b>
                 <br>
                 <br>
                 
  <tr>
    <th>Sr.No</th>
    <th>Subject Taught</th>
    <th>Class</th>
    <th>Result</th>
  </tr>
  <% if(array[5].isEmpty()==false) { %>
  <tr>
      <td>1</td>
    <td><%= rs.getString(34)%></td>
    <td><%= rs.getString(35)%></td>
    <td><%= rs.getString(36)%></td>
  </tr>
  <% } %>
  
<% if(array[6].isEmpty()==false) { %>
 <tr>
     <td>2</td>
     <td><%= rs.getString(37)%></td>
     <td><%= rs.getString(38)%></td>
     <td><%= rs.getString(39)%></td>
      </tr>
  <% } %>
  
      <% if(array[7].isEmpty()==false){%>
          <tr>
          <td>3</td>
          <td><%= rs.getString(40)%></td>
          <td><%= rs.getString(41)%></td>
          <td><%=rs.getString(42)%></td>
          </tr>
          <%} %>
  
      
          <% if(array[8].isEmpty()==false){%>
          <tr>
          <td>4</td>
          <td><%=rs.getString(43)%></td>
          <td><%=rs.getString(44)%></td>
          <td><%=rs.getString(45)%></td>
          </tr>
          <%} %>
  
          <% if(array[9].isEmpty()==false){ %>
          <tr>
          <td>5</td>
          <td><%= rs.getString(46)%></td>
          <td><%= rs.getString(47)%></td>
          <td><%= rs.getString(48)%></td>
          </tr>
          <%}%>
          
          <%if(array[10].isEmpty()==false){%>
          <tr>
          <td>6</td>
          <td><%= rs.getString(49)%></td>
          <td><%= rs.getString(50)%></td>
          <td><%= rs.getString(51)%></td>
          </tr>
          <%}%>
          
          <%if(array[11].isEmpty()==false){%>
          <tr>
          <td>7</td>
          <td><%= rs.getString(52)%></td>
          <td><%= rs.getString(53)%></td>
          <td><%= rs.getString(54)%></td>
          </tr>
          <%}%>
          
          <%if(array[12].isEmpty()==false){%>
          <tr>
          <td>8</td>
          <td><%= rs.getString(55)%></td>
          <td><%= rs.getString(56)%></td>
          <td><%= rs.getString(57)%></td>
          </tr>
          <%}%>   

</table>
<br>
<br>
<table class ="demo">
    <b><font size="5">Publication Details</font></b>
                 <br>
                 <br>
            <tr>
                <th>Sr.No.</th>
		<th>Title Of The Paper</th>
		<th>Name Of Conference/Journal/Publisher</th>
		<th>Volume Issue,Year Of Publication And ISBN Number</th>
            </tr>
            
  <% if(array[13].isEmpty()==false){ %>
  <tr>
      <td>1</td>
    <td><%=rs.getString(58)%></td>
    <td><%=rs.getString(59)%></td>
    <td><%=rs.getString(60)%></td>
  </tr>
  <% } %>
  
<% if(array[14].isEmpty()==false) { %>
 <tr>
     <td>2</td>
     <td><%= rs.getString(61)%></td>
     <td><%= rs.getString(62)%></td>
     <td><%= rs.getString(63)%></td>
     </tr>
  <% } %>
  
  
      <% if(array[15].isEmpty()==false){%>
          <tr>
          <td>3</td>
          <td><%= rs.getString(64)%></td>
          <td><%= rs.getString(65)%></td>
          <td><%= rs.getString(66)%></td>
          </tr>
          <%} %>
  
      
          <% if(array[16].isEmpty()==false){%>
          <tr>
          <td>4</td>
          <td><%=rs.getString(67)%></td>
          <td><%=rs.getString(68)%></td>
          <td><%=rs.getString(69)%></td>
          </tr>
          <%} %>
  
          <% if(array[17].isEmpty()==false){ %>
          <tr>
          <td>5</td>
          <td><%= rs.getString(70)%></td>
          <td><%= rs.getString(71)%></td>
          <td><%= rs.getString(72)%></td>
          </tr>
          <%}%>
          
          <%if(array[18].isEmpty()==false){%>
          <tr>
          <td>6</td>
          <td><%= rs.getString(73)%></td>
          <td><%= rs.getString(74)%></td>
          <td><%= rs.getString(75)%></td>
          </tr>
          <%}%>
          
          <%if(array[19].isEmpty()==false){%>
          <tr>
          <td>7</td>
          <td><%=rs.getString(76)%></td>
          <td><%=rs.getString(77)%></td>
          <td><%=rs.getString(78)%></td>
          </tr>
          <%}%>
          
          <%if(array[20].isEmpty()==false){%>
          <tr>
          <td>8</td>
          <td><%=rs.getString(79)%></td>
          <td><%=rs.getString(80)%></td>
          <td><%=rs.getString(81)%></td>
          </tr>
          <%}%>
          
           <% if(array[21].isEmpty()==false){%>
          <tr>
          <td>9</td>
          <td><%= rs.getString(82)%></td>
          <td><%= rs.getString(83)%></td>
          <td><%= rs.getString(84)%></td>
          </tr>
          <%}%>
          
          <% if(array[22].isEmpty()==false){ %>
          <tr>
          <td>10</td>
          <td><%= rs.getString(85)%></td>
          <td><%= rs.getString(86)%></td>
          <td><%= rs.getString(87)%></td>
          </tr>
          <%}%>
  
</table>
<br>
<br>
<table class ="demo">
    <b><font size="5">Any Other Co-curricular/Extracurricular Activity Done</font><b>
                 <br>
                 <br>
            <tr>
                <th>Sr.No</th>
                <th>Name Of Activity</th>
		<th>Level Of Activity</th>
		<th>Role</th>
            </tr>
  <% if(array[23].isEmpty()==false) { %>
  <tr>
      <td>1</td>
    <td><%= rs.getString(88)%></td>
    <td><%= rs.getString(89)%></td>
    <td><%= rs.getString(90)%></td>
    
   
  </tr>
  <% } %>
<% if(array[24].isEmpty()==false) { %>
 <tr>
     <td>2</td>
     <td><%= rs.getString(91)%></td>
     <td><%= rs.getString(92)%></td>
     <td><%= rs.getString(93)%></td>
      </tr>
  <% } %>
  
      <% if(array[25].isEmpty()==false){%>
          <tr>
          <td>3</td>
          <td><%= rs.getString(94)%></td>
          <td><%= rs.getString(95)%></td>
          <td><%=rs.getString(96)%></td>
          </tr>
          <%} %>
  
      
          <% if(array[26].isEmpty()==false){%>
          <tr>
          <td>4</td>
          <td><%=rs.getString(97)%></td>
          <td><%=rs.getString(98)%></td>
          <td><%=rs.getString(99)%></td>
          </tr>
          
          <%}%>
  
          <% if(array[27].isEmpty()==false){ %>
          <tr>
          <td>5</td>
          <td><%=rs.getString(100)%></td>
          <td><%=rs.getString(101)%></td>
          <td><%=rs.getString(102)%></td>
        </tr>  
          <%}%>
          
          <%if(array[28].isEmpty()==false){%>
          <tr>
          <td>6</td>
          <td><%=rs.getString(103)%></td>
          <td><%=rs.getString(104)%></td>
          <td><%=rs.getString(105)%></td>
          </tr>
          <%}%>
          
          <%if(array[29].isEmpty()==false){%>
          <tr>
          <td>7</td>
          <td><%=rs.getString(106)%></td>
          <td><%=rs.getString(107)%></td>
          <td><%=rs.getString(108)%></td>
          </tr>
          <%}%>
          
          <%if(array[30].isEmpty()==false){%>
          <tr>
          <td>8</td>
          <td><%=rs.getString(109)%></td>
          <td><%=rs.getString(110)%></td>
          <td><%=rs.getString(111)%></td>
          </tr>
          <%}%>   
<%}
            }//closed try
catch(Exception e)
{
    out.println(e);
}
%>  
</table>

<center>
    <br><br><p>
    <form action="homepage.jsp">
    <input type="submit"  class="button" value="LogOut">
    </form>
    <br>
    
    <input type="submit" onclick="myFunction()" class="button" value="Print">
</p>
    <br><br>
    <script>
    function myFunction(){window.print();}
</script>
</center>
</body>
</html>

