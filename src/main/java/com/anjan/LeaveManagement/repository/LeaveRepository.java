package com.anjan.LeaveManagement.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.anjan.LeaveManagement.model.Leaves;

@Repository
public interface LeaveRepository extends PagingAndSortingRepository<Leaves, Integer> {
	
}
