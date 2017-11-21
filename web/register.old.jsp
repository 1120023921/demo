<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%@taglib uri="http://www.5retc.com/taglib" prefix="etc" %>
    <form action="register" method="post">
    <%
    	String custname=request.getParameter("custname");
    	if(custname==null){
    		custname="";
    	}
     %>
    	Your username:<input type="text" name="custname" value=<%=custname %>><br>
    	Your password:<input type="password" name="pwd"><br>
    <%
    	String age=request.getParameter("age");
    	if(custname==null){
    		age="";
    	}
     %>
    	Your age:<input type="text" name="age" value=<%=age%>><br>
     <%
    	String address=request.getParameter("address");
    	if(address==null){
    		address="";
    	}
     %>
    	Your address:<input type="text" name="address" value=<%=address%>><br>
    	<input type="submit" value="Register">
    </form> 
  </body>
</html>
