package com.pm.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.pm.pojo.Employee;
import com.pm.pojo.People;
import com.pm.service.EmployeeService;
import com.pm.tool.EmployeeTool;

@Controller
@RequestMapping("/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService eservice;
	@RequestMapping("/index")
	public String employee(HttpServletRequest request){
		if("3".equals(EmployeeTool.getE_job())){
			return "employee";
		} else {
			return "adminEmployee";
		}
	}
	@RequestMapping("/getEmployee")
	@ResponseBody
	public Map getEmployee(int rows,int page,String d_id){
		Map<String, Object> param = new HashMap<String,Object>();
		Map<String, Object> result = new HashMap<String,Object>();
		param.put("top", rows*page);
		param.put("bottom", rows*(page-1));
		param.put("d_id", d_id);
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
		if(i>0) result.put("msg", "success");
		else result.put("msg", "failed");
		return result;
	}
	@RequestMapping("/addPeople")
	@ResponseBody
	public Map addPeople(People people,String idcard){
		Map<String, Object> result = new HashMap<String,Object>();
		System.out.println(people.getP_name());
		int i = eservice.addPeople(people);
		if(i>0) result.put("msg", "success");
		else result.put("msg", "failed");
		return result;
	}
	@RequestMapping("/updateEmp")
	@ResponseBody
	public Map updateEmp(Employee emp){
		Map<String, Object> result = new HashMap<String,Object>();
		System.out.println(emp.getE_name());
		int i = eservice.updateEmp(emp);
		if(i>0) result.put("msg", "success");
		else result.put("msg", "failed");
		return result;
	}
	@RequestMapping("/employePeople")
	@ResponseBody
	public Map employePeople(@RequestParam Map<String, Object> param){
		Map<String, Object> result = new HashMap<String,Object>();
		System.out.println(param);
//		int i = eservice.employePeople(param);
		return result;
	}
	@RequestMapping("/getEmployeeBar")
	@ResponseBody
	public List getEmployeeBar(){
		List list = new ArrayList<>();
		list =eservice.getEmployeeBar();
		return list;
	}
	@RequestMapping("/upIMG")
	public ModelAndView upIMG(@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		Map<String, Object> param = new HashMap<String,Object>();
		Map<String, Object> result = new HashMap<String,Object>();
		if(!file.isEmpty()){
			byte[] img = new byte[2*1024];
			img=file.getBytes();
			param.put("img",img);
			param.put("e_id", EmployeeTool.getE_id());
			int i = eservice.upIMG(param);
			if(i>0) {
				result.put("upmsg", "success");
				getIMG();
			}
			else result.put("upmsg", "failed");
		} else{
			result.put("upmsg", "请选择一张图片作为您的头像");
		}
		mv.setViewName("shouye");
		mv.addObject("msg", result);
		return mv;
	}
	
	public void getIMG(){
		Map<String, Object> result = new HashMap<>();
		Map<String, Object> param = new HashMap<>();
		param.put("e_id", EmployeeTool.getE_id());
		result = eservice.getIMG(param);
		if(result.get("E_PIC")!=null){
			EmployeeTool.getIMG(result);
		}
	}
}
