package com.train.action;

import java.util.Objects;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class RegisterAction extends Action{

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		RegisterForm registerForm = (RegisterForm)form;
		ActionForward forward = mapping.getInputForward();
		
		System.out.println("execute");
		
		
		
		String forwardName = "form";
		String cmd = request.getParameter("cmd");
		if("submit".equals(cmd)) {
//			System.out.println("FirstName: "+registerForm.getFirstName());
//			System.out.println("SurName: "+registerForm.getSurName());
//			System.out.print(request.getParameter("remak"));
			
			System.out.println(registerForm.toString());
			
			
			registerForm.setCountCourse(Objects.toString(registerForm.getCourse().length));
			forwardName = "success";
		}
		
		forward = mapping.findForward(forwardName);
		return forward;
	}

	
}
