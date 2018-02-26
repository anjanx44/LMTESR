package com.anjan.LeaveManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anjan.LeaveManagement.model.Employees;
import com.anjan.LeaveManagement.repository.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	EmployeeRepository empRepository;
	
	public List<Employees> getAllEmployee() {
		return empRepository.findAll();
	}

	public void save(Employees leave) {
		// TODO Auto-generated method stub
		empRepository.save(leave);
	}
}
