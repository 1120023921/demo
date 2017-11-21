package com.etc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.service.CustomerService;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {
		
		String custname=request.getParameter("custname");
		String pwd=request.getParameter("pwd");
//		调用业务逻辑	
		CustomerService cs=new CustomerService();
		boolean flag=cs.login(custname, pwd);
//		跳转到不同页面
		if(flag){
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}else{
			response.sendRedirect("index.jsp");
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		获取请求参数
		String custname=request.getParameter("custname");
		String pwd=request.getParameter("pwd");
//		调用业务逻辑	
		CustomerService cs=new CustomerService();
		boolean flag=cs.login(custname, pwd);
//		跳转到不同页面
		if(flag){
			ServletContext ctxt=this.getServletContext();
			Integer count=(Integer) ctxt.getAttribute("count");
			if(count==null){
				count=0;
			}
			count++;
			ctxt.setAttribute("count", count);	
			
//			response.sendRedirect("welcome.jsp");
			Cookie c1=new Cookie("custname",custname);
			Cookie c2=new Cookie("pwd",pwd);
			c1.setMaxAge(3600);
			c2.setMaxAge(3600);
			response.addCookie(c1);
			response.addCookie(c2);
			
			HttpSession session=request.getSession();
			session.setAttribute("custname", custname);
			request.getRequestDispatcher("welcome.jsp").forward(request, response);
		}else{
			response.sendRedirect("index.jsp");
		}
	}

}
