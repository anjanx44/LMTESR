package com.anjan.LeaveManagement.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.anjan.LeaveManagement.model.Employees;

@Repository
public interface EmployeeRepository extends JpaRepository<Employees, Integer>{

}
	