package com.anjan.LeaveManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Sort;

import com.anjan.LeaveManagement.model.Leaves;
import com.anjan.LeaveManagement.repository.LeaveRepository;


@Service
public class LeaveService {
	private final static int PAGESIZE = 5;
	@Autowired
	LeaveRepository repository;
	
	public void save(Leaves leave) {
		repository.save(leave);
	}
	
	public Iterable<Leaves> findAllLeave() {
		return repository.findAll();
	}
	
	public List<Leaves> getPage(int pageNumber) {
		PageRequest request = new PageRequest(pageNumber - 1, PAGESIZE, Sort.Direction.ASC, "id");
		return repository.findAll(request).getContent();
	}
	
}
