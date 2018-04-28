package com.pm.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pm.pojo.Employee;
import com.pm.service.EmployeeService;
import com.pm.tool.EmployeeTool;

@Controller
public class LoginController {
	@Autowired
	private EmployeeService eService;
	@RequestMapping("/preLogin")
	@ResponseBody
	public Object preLogin(String e_id,String e_pwd,HttpServletRequest request){
		Map<String, Object> map =new HashMap<String,Object>();
		Employee employee = new Employee(); 
		employee =eService.getEmployeeById(e_id);
		if(employee==null){
			map.put("type", "error");
			map.put("msg","用户不存在!");
			return map;
		} else if(!e_pwd.equals(employee.getE_pwd())){
			map.put("type", "error");
			map.put("msg","账号或密码错误!");
			return map;
		} else{
			map.put("type", "success");
			map.put("msg","登录成功");
			request.getSession().setAttribute("userAccount", employee);
			EmployeeTool.init(request);
			return map;
		}
		
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request){
		return "shouye";
		
	}
}
