package com.pm.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pm.service.DispatchService;
import com.pm.tool.EmployeeTool;
@Controller
@RequestMapping("/dispatch")
public class DispatchController {
	@Autowired
	private DispatchService dService;
	@RequestMapping("/index")
	public ModelAndView dispatch(){
		ModelAndView mv = new ModelAndView();
		ArrayList<Object> list = new ArrayList<>();
		list = dService.getDispatchById(EmployeeTool.getE_id());
		mv.addObject("dispatchList", list);
		mv.setViewName("dispatch");
		return mv;
	}
}
