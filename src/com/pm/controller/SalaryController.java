package com.pm.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pm.service.SalaryService;
import com.pm.tool.EmployeeTool;

@RequestMapping("/salary")
@Controller
public class SalaryController {

	@Autowired
	private SalaryService salaryService;
	@RequestMapping("/index")
	public ModelAndView salary(){
		ModelAndView mv = new ModelAndView();
		List list = new ArrayList<>();
		list = salaryService.getSalaryById(EmployeeTool.getE_id());
		mv.addObject("mySalary", list.get(0));
		mv.setViewName("salary");
		return mv;
	}
}
