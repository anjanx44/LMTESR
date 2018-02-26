package com.anjan.LeaveManagement.Controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.anjan.LeaveManagement.model.Employees;
import com.anjan.LeaveManagement.model.Leaves;
import com.anjan.LeaveManagement.service.EmployeeService;
import com.anjan.LeaveManagement.service.LeaveService;
import com.anjan.LeaveManagement.service.LeaveTypeService;




@RestController
public class LeaveController {
	
	@Autowired
	LeaveService leaveService;
	LeaveTypeService leaveTypeService;
	EmployeeService employeeService;
	
	@GetMapping("/")
	public ModelAndView ShowAllLeave(Model model) {
		return new ModelAndView("ShowAllLeave");
	}
	
	@GetMapping(value="/show", produces = { MediaType.APPLICATION_JSON_VALUE })
	public List<Leaves> getAllLeave(@RequestParam Integer page) {
		System.out.println("page=================="+page);
		
		return (List<Leaves>) leaveService.getPage(page);
	}
	
	
	@GetMapping("/createLeave")
	public ModelAndView createLeave(Model model) {
		return new ModelAndView("createLeave");
	}
	
	@GetMapping("/editLeave")
	public ModelAndView editLeave(Model model) {
		return new ModelAndView("editLeave");
	}
	@GetMapping("/leaveDetails")
	public ModelAndView leaveDetails(Model model) {
		return new ModelAndView("leaveDetails");
	}
	
	
	/*@GetMapping("/getAllEmplyee")
	public void getAllEmplyee(){
		
		System.out.println("===========================Anjan");
//		System.out.println(employeeService.getAllEmployee());
		Employees leave = new Employees();
		leave.setId(7);
		leave.setName("masud");
		leave.setDeptId(12);
		
		employeeService.save(leave);
		
		//return (List<Employees>) employeeService.getAllEmployee();
	}*/
	
	
	
	@PostMapping(value = "/saveLeave", produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public String saveLeave(@ModelAttribute @Valid Leaves leave, BindingResult result) {
		System.out.println("anjan=============================================");
		System.out.println(leave.toString());
			
		
		// converting string to date
			String sDate1 = leave.getStartDate();
			String sDate2 = leave.getEndDate();
			
		    Date date1 = null;
		    Date date2 = null;
			try {
				date1 = new SimpleDateFormat("yyyy-MM-dd").parse(sDate1);
				date2 = new SimpleDateFormat("yyyy-MM-dd").parse(sDate2);
			} catch (ParseException e) {
				e.printStackTrace();
			}  
		    
			System.out.println(sDate1+"\t"+date1);  
			System.out.println(sDate2+"\t"+date2);
			
			
			 //Comparing dates
	        long difference = Math.abs(date1.getTime() - date2.getTime());
	        int differenceDates = (int) (difference / (24 * 60 * 60 * 1000));
	        
	        System.out.println("diff date======"+differenceDates);
	        
	        
	        
		// save to database
		leave.setDuration(differenceDates);
		leave.setEmpId(1);
		leave.setStatus("To Approve");
	

		leaveService.save(leave);
		
		
		return "";
		
		
	}
	
	
	
	
	
}















