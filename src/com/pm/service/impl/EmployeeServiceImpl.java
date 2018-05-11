package com.pm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.EmployeeDao;
import com.pm.pojo.Employee;
import com.pm.pojo.People;
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
		Map<String, Object> temp = new HashMap<String,Object>();
		temp.put("d_id", param.get("d_id"));
		result.put("total", eDao.getEmployee(temp).size());
		result.put("rows", eDao.getEmployee(param));
		return result;
	}
	@Override
	public int deletePeople(String p_id) {
		// TODO Auto-generated method stub
		return eDao.deletePeople(p_id);
	}
	@Override
	public int addPeople(People people) {
		// TODO Auto-generated method stub
		return eDao.addPeople(people);
	}
	@Override
	public int updateEmp(Employee emp) {
		// TODO Auto-generated method stub
		return eDao.updateEmp(emp);
	}
	@Override
	public List getDept() {
		// TODO Auto-generated method stub
		return eDao.getDept();
	}
	@Override
	public List getEmployeeBar() {
		// TODO Auto-generated method stub
		return eDao.getEmployeeBar();
	}
	@Override
	public int upIMG(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return eDao.upIMG(param);
	}
	@Override
	public Map<String, Object> getIMG(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return eDao.getIMG(param);
	}
	@Override
	public int employePeople(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return eDao.employePeople(param);
	}

}
