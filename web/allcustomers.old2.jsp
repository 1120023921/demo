<%@ page language="java" import="java.util.*,com.etc.vo.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'allusers.jsp' starting page</title>
    
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
 <%@taglib uri="http://www.5retc.com/taglib" prefix="etc"%>
 All Customers:<br>
<table width="200" border="1">
<tbody>
	<tr>
	<td>&nbsp;Custname</td>
	<td>&nbsp;age</td>
	<td>address&nbsp;</td>
	</tr>

	<etc:iterator items="<%=request.getAttribute("allcustomers")%>" var="c">
	<tr>
	<td><%=((Customer)pageContext.getAttribute("c")).getCustname()%></td>
	<td><%=((Customer)pageContext.getAttribute("c")).getAge()%></td>
	<td><%=((Customer)pageContext.getAttribute("c")).getAddress()%></td>
	</tr>
	</etc:iterator>
</tbody></table><br>
  </body>
</html>
