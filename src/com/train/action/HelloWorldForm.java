package com.train.action;

import org.apache.struts.action.ActionForm;

public class HelloWorldForm extends ActionForm{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2800860394511005258L;
	private String masseage;

	public String getMasseage() {
		return masseage;
	}

	public void setMasseage(String masseage) {
		this.masseage = masseage;
	}

	public HelloWorldForm() {
		this.masseage = "HelloWord From FormBeans";
	}

}
