<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script data-require="jquery@*" data-semver="3.1.1" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.js"></script>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>

<script src="script.js"></script>
<style>
	table th ,td{
	text-align:center;
	}
	body{
	width:90%;
	margin:auto;
	border:20px;
	}
	form{
	margin-top:30px;
	}
	table tr th{
	background: darkcyan;
	font-size:15px;
    
	}
	#mainPage{
		background:antiquewhite;
		border:1px solid antiquewhite;
	}
</style>
<%!
	/* For database connection. We can do it in scriptlet tag but it runs everytime the code runs */
	Connection con;
	
	public void jspInit(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/dec2016","root","Hardikritha1!");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>

</head>
<body>
<form>
<table id="table" class="table table-bordered table-striped table-hover table-condensed">
	<tr >
	<th style="padding:10px;">Username </th>
	<th style="padding:10px;">Password</th>
	<th style="padding:10px;">Edit</th>
	<th style="padding:10px;">Delete</th>
	
	</tr>
<%
	
 	try{
 		
 		ResultSet rs = con.createStatement().executeQuery("select * from user");
 		while(rs.next()){
 %>
 
 	<tr id="<%=rs.getString(1)%>">
 		<td class="name"><%= rs.getString(2) %></td>
 		<td class="password" ><%= rs.getString(3) %></td>
 		
 		<td>
 			<a class="edit-box"><img id="edit" src="images/edit.png" /></a>
 		   	<a class="save-box" ><img id="save" src="images/save.png" /></a>
 		
 		</td>
 		<td>
 			<a href="delete.jsp?id=<%=rs.getString(1)%>"><img src="images/delete.png" /></a>
 			
 		</td>
 		</tr>
 		
 	
 <%
 		}
 	}catch(Exception e){
 		e.printStackTrace();
 	}
 %>
 		<td>
 			<a id="addB" ><img src="images/add.png" />
 		</td>
 		
</table>	
	<button id="mainPage" onclick="location.href='index.html'" type="button">
     Return to main page</button>
	 	
</form>

</body>
</html>