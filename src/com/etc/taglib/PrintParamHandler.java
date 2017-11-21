package com.etc.taglib;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintParamHandler extends TagSupport {
	private String param;
	private String defValue="";
	
	
	public PrintParamHandler() {
		super();
		System.out.println("PrintParamHandler");
		// TODO Auto-generated constructor stub
	}
	@Override
	public void release() {
		// TODO Auto-generated method stub
		super.release();
		System.out.println("release");
	}
	public void setParam(String param) {
		this.param = param;
		System.out.println("setParam");
	}
	public void setDefValue(String defValue) {
		this.defValue = defValue;
		System.out.println("setDefValue");
	}
	@Override
	public int doStartTag() throws JspException {
		System.out.println("doStartTag");
		// TODO Auto-generated method stub
		HttpServletRequest request=(HttpServletRequest) pageContext.getRequest();
		JspWriter out=pageContext.getOut();
		String value=request.getParameter(param);
		if(value==null){
			value=defValue;
		}
		try {
			out.println(value);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return super.doStartTag();
	}
	
	
}
