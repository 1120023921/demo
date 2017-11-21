package com.etc.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.etc.service.CounterService;

public class CounterListener implements ServletContextListener {
//�ر������������Ķ�������ʱ�����������淽��
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		ServletContext ctxt=arg0.getServletContext();
		Integer number=(Integer) ctxt.getAttribute("count");
		CounterService cs=new CounterService();
		cs.save(number);
	}
//���������������Ķ����ʼ�������������淽��
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		CounterService cs=new CounterService();
		Integer number=cs.getNumber();
		ServletContext ctxt=arg0.getServletContext();
		ctxt.setAttribute("count", number);

	}

}
