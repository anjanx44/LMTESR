package com.anjan.LeaveManagement.model;
// default package
// Generated Feb 25, 2018 11:54:15 PM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Leaves generated by hbm2java
 */
@Entity
@Table(name = "leaves")
public class Leaves implements java.io.Serializable {

	private Integer id;
	private String leaveType;
	private String description;
	private String startDate;
	private String endDate;
	private int duration;
	private int empId;
	private String managerComment;
	private String empName;
	private String empDept;
	private String status;

	public Leaves() {
	}

	public Leaves(String leaveType, String description, String startDate, String endDate, int duration, int empId,
			String managerComment, String empName, String empDept, String status) {
		this.leaveType = leaveType;
		this.description = description;
		this.startDate = startDate;
		this.endDate = endDate;
		this.duration = duration;
		this.empId = empId;
		this.managerComment = managerComment;
		this.empName = empName;
		this.empDept = empDept;
		this.status = status;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "leave_type", nullable = false, length = 20)
	public String getLeaveType() {
		return this.leaveType;
	}

	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}

	@Column(name = "description", nullable = false, length = 250)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "start_date", nullable = false, length = 30)
	public String getStartDate() {
		return this.startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	@Column(name = "end_date", nullable = false, length = 30)
	public String getEndDate() {
		return this.endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	@Column(name = "duration", nullable = false)
	public int getDuration() {
		return this.duration;
	}

	public void setDuration(int duration) {
		this.duration = duration;
	}

	@Column(name = "emp_id", nullable = false)
	public int getEmpId() {
		return this.empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	@Column(name = "manager_comment", nullable = false, length = 250)
	public String getManagerComment() {
		return this.managerComment;
	}

	public void setManagerComment(String managerComment) {
		this.managerComment = managerComment;
	}

	@Column(name = "emp_name", nullable = false, length = 50)
	public String getEmpName() {
		return this.empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	@Column(name = "emp_dept", nullable = false, length = 50)
	public String getEmpDept() {
		return this.empDept;
	}

	public void setEmpDept(String empDept) {
		this.empDept = empDept;
	}

	@Column(name = "status", nullable = false, length = 30)
	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}