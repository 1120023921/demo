package com.etc.taglib;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;
import com.etc.vo.*;

public class IteratorHandler extends TagSupport{
	private List<Customer> items;
	private String var;
	private Iterator<Customer> iter;
	public void setItems(List<Customer> items) {
		this.items = items;
	}
	public void setVar(String var) {
		this.var = var;
	}
	@Override
	public int doAfterBody() throws JspException {
		// TODO Auto-generated method stub
		if(iter.hasNext()){
			pageContext.setAttribute(var, iter.next());
			return EVAL_BODY_AGAIN;
		}else{
			return SKIP_BODY;
		}
	}
	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		iter=items.iterator();
		pageContext.setAttribute(var, iter.next());
		return EVAL_BODY_INCLUDE;
	}
	
	
	
}
