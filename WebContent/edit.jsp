<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="user" class="com.demo.model.UserBean">
 <jsp:setProperty name="user" property="*" />
 </jsp:useBean>

 <jsp:useBean id="obj" class="com.demo.dao.UserDAO"/>

	<%
		System.out.println("In Register");
		int s=Integer.parseInt(request.getParameter("id"));
		String v=request.getParameter("username");
		String m=request.getParameter("password");
		
		System.out.println(s+v+m);
		
		int x = obj.updateInfo(user);
		System.out.println(x);
		response.sendRedirect("view.jsp");
	 	
		
		
	 	
	%>
</body>
</html>