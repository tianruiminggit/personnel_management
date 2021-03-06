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
	/***
	 * ��¼ǰԤ����
	 * @param e_id
	 * @param e_pwd
	 * @param request
	 * @return
	 */
	@RequestMapping("/preLogin")
	@ResponseBody
	public Object preLogin(String e_id,String e_pwd,HttpServletRequest request){
		Map<String, Object> map =new HashMap<String,Object>();
		Employee employee = new Employee(); 
		employee =eService.getEmployeeById(e_id);
		if(employee==null){
			map.put("type", "error");
			map.put("msg","�û�������!");
			return map;
		} else if(!e_pwd.equals(employee.getE_pwd())){
			map.put("type", "error");
			map.put("msg","�˺Ż��������!");
			return map;
		} else{
			map.put("type", "success");
			map.put("msg","��¼�ɹ�");
			request.getSession().setAttribute("userAccount", employee);
			request.getSession().setAttribute("dept", eService.getDept());
			EmployeeTool.init(request);
			HashMap<String, Object> param = new HashMap<>();
			param.put("e_id", employee.getE_id());
//			EmployeeTool.getIMG(eService.getIMG(param));
			if(eService.getIMG(param)!=null){
				EmployeeTool.getIMG(eService.getIMG(param));
			}
			return map;
		}
		
	}
	/**
	 * ��¼
	 * @param request
	 * @return
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request){
		return "shouye";
		
	}
}
