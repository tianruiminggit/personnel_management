package com.pm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.EmployeeDao;
import com.pm.pojo.Employee;
import com.pm.service.EmployeeService;
@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	private EmployeeDao eDao;
	@Override
	public List getEmployee() {
		
		return eDao.getEmployee();
	}
	@Override
	public Employee getEmployeeById(String e_id) {
		// TODO Auto-generated method stub
		return eDao.getEmployeeById(e_id);
	}
	@Override
	public List getPeople() {
		// TODO Auto-generated method stub
		return eDao.getPeople();
	}
	@Override
	public Object getPeopleById(String p_id) {
		// TODO Auto-generated method stub
		return eDao.getPeopleById(p_id);
	}
	@Override
	public Map<String, Object> getPeople(Map param) {
		// TODO Auto-generated method stub
		Map<String, Object> result = new HashMap<String,Object>();
		result.put("total", eDao.getPeople(null).size());
		result.put("rows", eDao.getPeople(param));
		return result;
	}
	@Override
	public Map<String, Object> getEmployee(Map<String, Object> param) {
		// TODO Auto-generated method stub
		Map<String, Object> result = new HashMap<String,Object>();
		result.put("total", eDao.getEmployee(null).size());
		result.put("rows", eDao.getEmployee(param));
		return result;
	}
	@Override
	public int deletePeople(String p_id) {
		// TODO Auto-generated method stub
		return eDao.deletePeople(p_id);
	}

}
