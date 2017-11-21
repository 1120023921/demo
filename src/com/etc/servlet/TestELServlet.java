package com.etc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etc.vo.Customer;

public class TestELServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session=request.getSession();
		ServletContext application=this.getServletContext();
		Customer cust2=new Customer("custname2","pwd2");
    	Customer cust3=new Customer("custname3","pwd3");
    	Customer cust4=new Customer("custname4","pwd4");
    	
    	List<Customer> list=new ArrayList<Customer>();
    	list.add(cust2);
    	list.add(cust3);
    	list.add(cust4);
 
    	request.setAttribute("cust2",cust2);
    	session.setAttribute("cust3",cust3);
    	application.setAttribute("cust4",cust4);
    	
    	request.setAttribute("list",list);
    	
    	request.getRequestDispatcher("testEL.jsp").forward(request, response);
	}

}
