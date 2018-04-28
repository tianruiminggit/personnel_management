package com.pm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.pm.pojo.Employee;
import com.pm.service.EmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService eservice;
	@RequestMapping("/index")
	public String employee(HttpServletRequest request){
//		request.getSession().setAttribute("eid", "zs000001");
		return "employee";
	}
	@RequestMapping("/getEmployee")
	@ResponseBody
	public List getEmployee(){
		List list =new ArrayList<>();
		list = eservice.getEmployee();
		return list;
	}
	@RequestMapping("/getEmployeeById")
	@ResponseBody
	public Employee getEmployeeById(String e_id,HttpServletRequest request){
//		Employee employee = new Employee();
		return eservice.getEmployeeById(e_id);
	}
	@RequestMapping("/getPeople")
	@ResponseBody
	public List getPeople(){
		List list =new ArrayList<>();
		list = eservice.getPeople();
		return list;
	}
	@RequestMapping("/getPeopleById")
	@ResponseBody
	public Object getEmployeeById(String p_id){
//		Employee employee = new Employee();
		return eservice.getPeopleById(p_id);
	}
}
