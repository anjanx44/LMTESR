package com.anjan.LeaveManagement.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.anjan.LeaveManagement.dao.LeaveTypeDao;
import com.anjan.LeaveManagement.model.Leavetypes;

@Service
public class LeaveTypeServiceImpl implements LeaveTypeService{

	@Autowired
	private LeaveTypeDao leaveTypeDao;
	
	@Override
	public List<Leavetypes> getAllLeavetype() {
		
		return leaveTypeDao.getAllLeaveType();
	}

}
