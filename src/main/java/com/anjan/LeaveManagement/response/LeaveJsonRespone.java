package com.anjan.LeaveManagement.response;

import java.util.List;
import java.util.Map;

import com.anjan.LeaveManagement.model.Department;
import com.anjan.LeaveManagement.model.Employees;
import com.anjan.LeaveManagement.model.Leaves;



public class LeaveJsonRespone {
	private List<Leaves> leaves;
	private Employees employee;
	private Department department;
	private boolean validated;
	private Map<String, String> errorMessages;
	public List<Leaves> getLeaves() {
		return leaves;
	}
	public void setLeaves(List<Leaves> leaves) {
		this.leaves = leaves;
	}
	public Employees getEmployee() {
		return employee;
	}
	public void setEmployee(Employees employee) {
		this.employee = employee;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public boolean isValidated() {
		return validated;
	}
	public void setValidated(boolean validated) {
		this.validated = validated;
	}
	public Map<String, String> getErrorMessages() {
		return errorMessages;
	}
	public void setErrorMessages(Map<String, String> errorMessages) {
		this.errorMessages = errorMessages;
	}
	
	
	
	
}