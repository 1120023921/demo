<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testELOperator.jsp' starting page</title>
    
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
    ${19+2} <br>
    ${19-2} <br>
    ${19*2} <br>
    ${19/2} <br>
    ${19%2} <br>
    ---------------------------------------------<br>
    ${param.pwd1==param.pwd2}<br>
    ${param.pwd1!=param.pwd2}<br>
    ${param.pwd1<param.pwd2}<br>
    ${param.pwd1>param.pwd2}<br>
    ${param.pwd1<=param.pwd2}<br>
    ${param.pwd1>=param.pwd2}<br>
    ---------------------------------------------<br>
    ${param.month==7&&param.day==4}<br>
    ${param.month==7||param.day==4}<br>
    ${!(param.month==7)}<br>
    ---------------------------------------------<br>
    ${empty param.day}<br>
    ${param.year==2010?param.month+1:param.day+1}<br>
    ${param.day}
  </body>
</html>
