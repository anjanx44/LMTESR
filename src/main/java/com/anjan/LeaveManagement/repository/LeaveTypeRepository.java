package com.anjan.LeaveManagement.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.anjan.LeaveManagement.model.Leavetypes;

@Repository
public interface LeaveTypeRepository  extends PagingAndSortingRepository<Leavetypes, Integer>{
	
}
