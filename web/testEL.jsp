<%@ page language="java" import="java.util.*,com.etc.vo.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'testEL.jsp' starting page</title>
    
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
  <%@page isELIgnored="false" %>
    <%
    	Customer cust0=new Customer("custname0","pwd0");
    	
    	Customer cust1=new Customer("custname1","pwd1");
    	pageContext.setAttribute("cust1",cust1);
    
    %><br>
    
    1.<%=request.getParameter("name")%><br>
    1.${param.name}<br>
    
    2.<%=((Customer)pageContext.getAttribute("cust1")).getCustname()%><br>
    2.${pageScope.cust1.custname}<br>
    
    3.<%=((Customer)request.getAttribute("cust2")).getCustname()%><br>
    3.${requestScope.cust2.custname}<br>
    
    4.<%=((Customer)session.getAttribute("cust3")).getCustname()%><br>
    4.${sessionScope.cust3.custname}<br>
    
    5.<%=((Customer)application.getAttribute("cust4")).getCustname()%><br>
    5.${applicationScope.cust4.custname}<br>
    
    6.<%=((List<Customer>)request.getAttribute("list")).get(1).getCustname()%><br>
    6.${requestScope.list[1].custname}<br>
    
    7.<%=cust0.getCustname()%><br>
    7.${cust0.custname}<br>
    
    8.${cust1.custname}<br>
    9.${requestScope.remoteAddr}<br>
    
    <%=request.getParameterValues("hobbies")[0]%><br>
    ${pageContext.request}<br>
    
    10.${paramValues.hobbies[0]}<br>
    11.${cookie.JSESSIONID.value}<br>
    12.${initParam.path}<br>
    13.${pageContext.request.remoteAddr}<br>
    14.${requestScope['list']}<br>
    14.${requestScope.list}<br>
    14.${requestScope[list]}<br>
    15.${list}<br>
     
     ${header.accept}<br>
     ${headerValues.cookie[0]}<br>
     
     ${requestScope.cust2.custname}<br>
     ${requestScope["cust2"]["custname"]}<br>
     ${param.count+10}<br>
     <%=request.getParameter("name")%><br>
     ${param.name}<br>
     ${100/0}<br>
  </body>
</html>




















