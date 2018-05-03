package com.pm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	public Map getEmployee(int rows,int page){
		Map<String, Object> param = new HashMap<String,Object>();
		Map<String, Object> result = new HashMap<String,Object>();
		param.put("top", rows*page);
		param.put("bottom", rows*(page-1));
		result = eservice.getEmployee(param);
		return result;
	}
	@RequestMapping("/getEmployeeById")
	@ResponseBody
	public Employee getEmployeeById(String e_id,HttpServletRequest request){
//		Employee employee = new Employee();
		return eservice.getEmployeeById(e_id);
	}
	@RequestMapping("/getPeople")
	@ResponseBody
	public Map getPeople(int rows,int page){
		Map<String, Object> param = new HashMap<String,Object>();
		Map<String, Object> result = new HashMap<String,Object>();
		param.put("top", rows*page);
		param.put("bottom", rows*(page-1));
		result = eservice.getPeople(param);
		return result;
	}
	@RequestMapping("/getPeopleById")
	@ResponseBody
	public Object getEmployeeById(String p_id){
//		Employee employee = new Employee();
		return eservice.getPeopleById(p_id);
	}
	@RequestMapping("/deletePeople")
	@ResponseBody
	public Map deletePeople(String p_id){
		Map<String, Object> result = new HashMap<String,Object>();
		int i= eservice.deletePeople(p_id);
		if(i>0) result.put("msg", "succes");
		else result.put("msg", "failed");
		return result;
	}
}
