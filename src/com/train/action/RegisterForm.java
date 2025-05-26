package com.train.action;

import java.util.Arrays;

import org.apache.struts.action.ActionForm;

public class RegisterForm extends ActionForm{
	private String sid;
	private String firstName, surName;
	private String username, password;
	private String email, phone;
	private String course[];
	private String gender = "MALE";
	private String remak;
	private String countCourse;
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getSurName() {
		return surName;
	}
	public void setSurName(String surName) {
		this.surName = surName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String[] getCourse() {
		return course;
	}
	public void setCourse(String[] course) {
		this.course = course;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getRemak() {
		return remak;
	}
	public void setRemak(String remak) {
		this.remak = remak;
	}
	@Override
	public String toString() {
		return "RegisterForm [sid=" + sid + ", firstName=" + firstName + ", surName=" + surName + ", username="
				+ username + ", password=" + password + ", email=" + email + ", phone=" + phone + ", course="
				+ Arrays.toString(course) + ", gender=" + gender + ", remak=" + remak + "]";
	}
	public String getCountCourse() {
		return countCourse;
	}
	public void setCountCourse(String countCourse) {
		this.countCourse = countCourse;
	}
	
	
	
	
}
