
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>FIll Information</title>
        <link href="css/hover.css" rel="stylesheet" media="all">


<style>


body
{
 padding: 40px;
}
#header {
    background-color:black;
    color:white;
    font-size:160%;
    text-align:center;
    padding:5px;
}

#footer {
    background-color:black;
    color:White;
    	
    font-size:100%;
    clear:both;
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




* {
  box-sizing: border-box;
}

input[type="text"], datalist {
  margin: 20px;
  padding: 5px;
  border: 1px solid lightGrey;
  border-radius: 3px;
  outline: none;
 
}



* {
	 font-family: Arial, Verdana, sans-serif;
   color:#2F4F4F; 
}
fieldset {
  width: 1100px;
  border: 2px solid #dcdcdc;
  border-radius: 10px;
  padding: 7px;  
  text-align: left;
}
legend {
  background-color: #f4f4f4;
  border: 1px solid #dcdcdc;
  border-radius: 10px;
  padding: 10px 10px;
  text-align: left;
  text-transform: uppercase;
}



.demo {
		width:100%;
		
		border:1px solid #C0C0C0;
		border-collapse:collapse	
	}
	.demo caption {
		caption-side:top;
		text-align:center;
	}
	.demo th {
		border:1px solid #C0C0C0;
		background:#F0F0F0;
	}
	.demo td {
		border:1px solid #C0C0C0;
		text-align:center;
	}


</style>

    </head>
    <div id="header">
<h1>Information Of The Employee</h1>
</div>
<div id="section">

    <body>
        <form method="post" action="filldb.jsp">
        <center>
<br>

<h3>
Please fill the following information about the employee
</h3>
 <fieldset>
    <legend><h2><u>Offical</u> <u>Information</u></h2></legend>

<br>

<%! String id; %>
<% id=session.getAttribute("id").toString(); %>

<div class="text-input">
Employee Id *:
<input type="text" name="empid" value=<%=id%> placeholder="000" required readonly/>
  </div>



First name*:<input type="text" name="firstname" required size="20">


Middle name:<input type="text" name="middlename" required size="20">


Last name*:<input type="text" name="lastname" required size="20"> 


Gender*:
<input type="text" name="gender" list="gender" placeholder="Select Your Gender"  size="20">
<datalist id="gender"> 
  <option value="MALE">MALE</option>
   <option value="FEMALE">FEMALE</option>
</datalist>



        <label for="date">Date Of Joining</label>
        &nbsp;&nbsp;<input type="date" name="date1" id="date" placeholder="Date"  size="35" />
  


<br>


Designation*:&nbsp
<input type="text" name="designation" list="designation" placeholder="Select Your Designation" size="35" />

<datalist id="designation">
  <option value="Managing Director">Assistant Professor</option>
   <option value="General Manager">General Manager</option>
   <option value="Asst.General Manager">Asst.General Manager</option>
  <option value="Manager">Manager</option>  
<option value="Asst.Manager">Asst.Manager</option>
   <option value="Senior Coordinator">Senior Coordinator</option>
   <option value="Junior Coordinator">Junior Coordinator</option>
  <option value="Supervisor">Supervisor</option>
</datalist>


Qualification*:
<input type="text" name="quali" list="quali" placeholder="Select The Degree"  size="35"/>

<datalist id="quali">
  <option value="M.E">M.E</option>
   <option value="M.Tech">M.Tech</option>
   <option value="B.E">B.E</option>
  <option value="B.Tech">B.Tech</option>  
 <option value="MBA">MBA</option>
  <option value="PHD">PHD</option> 
</datalist>

<br>
<table class="demo">
	<b><font size="5">Educational Details:</font><b>
	<br>
        <br>
                   
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
                <td><input type="text" name="quali1" size="30" required></td>
		<td><input type="text" name="year1"></td>
		<td><input type="text" name="per1"></td>
		<td><input type="text" name="uni1"></td>
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" name="quali2" size="30"></td>
		<td><input type="text" name="year2"></td>
		<td><input type="text" name="per2"></td>
		<td><input type="text" name="uni2"></td>
	</tr>
        
	<tr>
                <td>3</td>
                <td><input type="text" name="quali3" size="30"></td>
		<td><input type="text" name="year3"></td>
		<td><input type="text" name="per3"></td>
		<td><input type="text" name="uni3"></td>
	</tr>
	<tr>
                <td>4</td>
		<td><input type="text" name="quali4" size="30"></td>
		<td><input type="text" name="year4"></td>
		<td><input type="text" name="per4"></td>
		<td><input type="text" name="uni4"></td>
	</tr>
	<tr>
	
                <td>5</td>
		<td><input type="text" name="quali5" size="30"></td>
		<td><input type="text" name="year5"></td>
                <td><input type="text" name="per5"></td>
                <td><input type="text" name="uni5"></td>
	</tr>
	<tbody>
</table>

<br>
<br>

<table class="demo">
	<b><font size="5">List Of  Subject Taught</font><b>
                 <br>
                 <br>
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
		<td><input type="text" name="sub1" size="45"></td>
		<td><input type="text" name="class1"></td>
		<td><input type="text" name="res1"></td>
		
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" name="sub2" size="45"></td>
		<td><input type="text" name="class2"></td>
		<td><input type="text" name="res2"></td>
		
	</tr>
	<tr>
                <td>3</td>
                <td><input type="text" name="sub3" size="45"></td>
		<td><input type="text" name="class3"></td>
		<td><input type="text" name="res3"></td>
		
	</tr>
	<tr>
                <td>4</td>
		<td><input type="text" name="sub4" size="45"></td>
		<td><input type="text" name="class4"></td>
		<td><input type="text" name="res4"></td>
		
	</tr>
	<tr>
                <td>5</td>
		<td><input type="text" name="sub5" size="45"></td>
		<td><input type="text" name="class5"></td>
                <td><input type="text" name="res5"></td>
              
	</tr>
        <tr>
                <td>6</td>
		<td><input type="text" name="sub6" size="45"></td>
		<td><input type="text" name="class6"></td>
                <td><input type="text" name="res6"></td>
               
	</tr>
        <tr>
                <td>7</td>
		<td><input type="text" name="sub7" size="45"></td>
		<td><input type="text" name="class7"></td>
                <td><input type="text" name="res7"></td>
	</tr>
        <tr>
                <td>8</td>
		<td><input type="text" name="sub8" size="45"></td>
		<td><input type="text" name="class8"></td>
                <td><input type="text" name="res8"></td>
	</tr>
        
	<tbody>
</table>
<br>
<br>


<table class="demo">
	<b><font size="5">Publication Details</font><b>
                    <br>
                    <br>
	<thead>
	<tr>
                <th>Sr.No.</th>
		<th>Title Of The Paper</th>
		<th>Name Of Conference/Journal/Publisher</th>
		<th>Volume Issue,Year Of Publication And ISBN Number</th>
		
	</tr>
	</thead>
<tbody>
	<tr>
                <td>1</td>
		<td><input type="text" name="title1" size="40"></td>
		<td><input type="text" name="publish1"></td>
		<td><input type="text" name="volume1" size="30"></td>
		
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" name="title2" size="40"></td>
		<td><input type="text" name="publish2"></td>
		<td><input type="text" name="volume2" size="30"></td>
	
	</tr>
	<tr>
                <td>3</td>
		<td><input type="text" name="title3" size="40"></td>
		<td><input type="text" name="publish3"></td>
		<td><input type="text" name="volume3" size="30"></td>
		
	</tr>
	<tr>    
                 <td>4</td>
		<td><input type="text" name="title4" size="40"></td>
		<td><input type="text" name="publish4"></td>
		<td><input type="text" name="volume4" size="30"></td>
		
	</tr>
	<tr>
                <td>5</td>
		<td><input type="text" name="title5" size="40"></td>
		<td><input type="text" name="publish5"></td>
		<td><input type="text" name="volume5" size="30"></td>
                
	</tr>
        <tr>
                 <td>6</td>
		<td><input type="text" name="title6" size="40"></td>
		<td><input type="text" name="publish6"></td>
		<td><input type="text" name="volume6" size="30"></td>
              
	</tr>
        <tr>
                 <td>7</td>
		<td><input type="text" name="title7" size="40"></td>
		<td><input type="text" name="publish7"></td>
		<td><input type="text" name="volume7" size="30"></td>
              
	</tr>
        <tr>
                 <td>8</td>
		<td><input type="text" name="title8" size="40"></td>
		<td><input type="text" name="publish8"></td>
		<td><input type="text" name="volume8" size="30"></td>
              
	</tr>
        <tr>
                 <td>9</td>
		<td><input type="text" name="title9" size="40"></td>
		<td><input type="text" name="publish9"></td>
		<td><input type="text" name="volume9" size="30"></td>
              
	</tr>
          <tr>
                 <td>10</td>
		<td><input type="text" name="title10" size="40"></td>
		<td><input type="text" name="publish10"></td>
		<td><input type="text" name="volume10" size="30"></td>
              
	</tr>
	<tbody>
</table>
<br>
<br>
<table class="demo">
	<b><font size="5">Any Other Co-curricular/Extracurricular Activity Done</font><b>
                    <br>
                    <br>
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
		<td><input type="text" name="activity1" size="40"></td>
		<td><input type="text" name="level1"></td>
		<td><input type="text" name="role1" size="30"></td>
		
	</tr>
	<tr>
                <td>2</td>
		<td><input type="text" name="activity2" size="40"></td>
		<td><input type="text" name="level2"></td>
		<td><input type="text" name="role2" size="30"></td>
	
	</tr>
	<tr>
                <td>3</td>
                <td><input type="text" name="activity3" size="40"></td>
		<td><input type="text" name="level3"></td>
		<td><input type="text" name="role3" size="30"></td>
		
	</tr>
	<tr>    
                <td>4</td>
		<td><input type="text" name="activity4" size="40"></td>
		<td><input type="text" name="level4"></td>
		<td><input type="text" name="role4" size="30"></td>
		
	</tr>
	<tr>
                <td>5</td>
		<td><input type="text" name="activity5" size="40"></td>
		<td><input type="text" name="level5"></td>
                <td><input type="text" name="role5" size="30"></td>
                
	</tr>
        <tr>
                <td>6</td>
		<td><input type="text" name="activity6" size="40"></td>
		<td><input type="text" name="level6"></td>
                <td><input type="text" name="role6" size="30"></td>
              
	</tr>
        <tr>
                <td>7</td>
		<td><input type="text" name="activity7" size="40"></td>
		<td><input type="text" name="level7"></td>
                <td><input type="text" name="role7" size="30"></td>
              
	</tr>
        <tr>
                <td>8</td>
		<td><input type="text" name="activity8" size="40"></td>
		<td><input type="text" name="level8"></td>
                <td><input type="text" name="role8" size="30"></td>
              
	</tr>
      
	<tbody>
</table>
<br>
Area Of Interest:<br><br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<textarea name="areaofinterst" rows="10" cols="30" required></textarea>



</fieldset>
<br>
<br>
<fieldset>
<legend><h2><u>Personal</u>  <u> Information:</u></h2></legend>
<br>
Date Of Birth:&nbsp
<input type="date" name="dob">
<br>
 <br>
                   
Address*: <br><br> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<textarea name="address" rows="10" cols="30" required></textarea>
<br>
<br>
EMail ID*:&nbsp <input type="email" name="emailid" required size="30">

Contact No*:&nbsp<input type="text" name="number" pattern="[7-9]{1}[0-9]{9}" title="Phone Number With 7-9 And Remainnig 9 Digit With 0-9" required size="15">

Blood Group:
<input type="text" name="blood" list="blood" placeholder="Select The Blood Group"  size="15"/>

<datalist id="blood">
  <option value="A+">A+</option>
   <option value="A-">A-</option>
   <option value="B+">B+</option>
  <option value="B-">B-</option>  
  <option value="O+">O+</option>
   <option value="O-">O-</option>
   <option value="AB+">AB+</option>
  <option value="AB-">AB-</option>
</datalist>
<br>
<br>
</fieldset>


<input type="submit" class="styled-button-9" value="Submit" name="submit">
&nbsp;
<input type="reset" class="styled-button-9" value="Reset" name="reset"/>

<div style="background-color:black">
<center style="color:white">

</div>
</h3>

</form>
</center>
    </body>
</html>
