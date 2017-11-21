<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
  <%
  	String custname=null;
   	String pwd=null;
   	Cookie[] cookies=request.getCookies();
   	if(cookies!=null){
   		for(Cookie c:cookies){
   			if(c.getName().equals("custname")){
   				custname=c.getValue();
   			}
   			
   			if(c.getName().equals("pwd")){
   				pwd=c.getValue();
   			}
   		}
   	}
   	
   	if(custname!=null&&pwd!=null){
   		request.getRequestDispatcher("login?custname="+custname+"&pwd="+pwd).forward(request,response);
   		return;
   	}
   %>
   <%@taglib uri="http://www.5retc.com/taglib" prefix="etc" %>
    <form action="login" method="post">
    	Your username:<input type="text" name="custname" value="<etc:printParam param="custname" defValue=""/>"><br>
    	Your password:<input type="password" name="pwd"><br>
    	<input type="submit" value="Login" name="button1">&nbsp;&nbsp; <a href="register.jsp">Register</a>
    </form> 
    <br>
 
    </body>
</html>
