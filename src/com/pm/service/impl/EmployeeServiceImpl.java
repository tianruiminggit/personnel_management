package com.pm.service.impl;

import java.util.List;

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

}
