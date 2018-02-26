package com.anjan.LeaveManagement.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.anjan.LeaveManagement.model.Leavetypes;


@Transactional
@Repository
public class LeaveTypeDaoImpl implements LeaveTypeDao {
	@PersistenceContext	
	private EntityManager entityManager;	
	
	
	@Override
	public List<Leavetypes> getAllLeaveType() {
		
		String hql = "FROM leavetypes";
		List<Leavetypes> resultList = (List<Leavetypes>) entityManager.createQuery(hql).getResultList();
		return resultList;
		
	}

}
