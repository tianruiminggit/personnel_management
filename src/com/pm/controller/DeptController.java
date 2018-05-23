package com.pm.controller;

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

import com.pm.service.DeptService;
import com.pm.tool.EmployeeTool;

@Controller
@RequestMapping("/dept")
public class DeptController {

	@Autowired
	private DeptService deptService;
	
	@RequestMapping("/insertDept")
	@ResponseBody
	public Object insertDept(@RequestParam Map<String, Object> param,HttpServletRequest request){
		Map<String, Object> result = new HashMap<String,Object>();
		List list = new ArrayList<>();
		list = deptService.getDept(param);
		if(!list.isEmpty()) {
			result.put("msg", "�����Ѵ���");
			result.put("type", "error");
			return result;
		}
		if(deptService.insertDept(param)>0) {
			result.put("msg", "��ӳɹ�");
			result.put("type", "success");
			request.getSession().setAttribute("dept", deptService.getDept(result));
		}
		else {
			result.put("msg", "���ʧ��");
			result.put("type", "error");
		}
		return result;
	}
}
