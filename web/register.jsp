<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
   		�û���:<input type="text" name="custname" value="<etc:printParam param="custname" defValue=""/>"><br>
    	����:<input type="password" name="pwd" value="<etc:printParam param="pwd" defValue=""/>"><br>
    	����:<input type="text" name="age" value="<etc:printParam param="age" defValue=""/>"><br>
    	��ַ:<input type="text" name="address" value="<etc:printParam param="address" defValue=""/>"><br>
    	<input type="submit" value="ע��">
    </form> 
  </body>
</html>
