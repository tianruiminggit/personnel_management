package com.pm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.SalaryDao;
import com.pm.service.SalaryService;

@Service
public class SalaryServiceImpl implements SalaryService{

	@Autowired
	private SalaryDao salaryDao;
	@Override
	public List getSalaryById(String e_id) {
		// TODO Auto-generated method stub
		return salaryDao.getSalaryById(e_id);
	}
	@Override
	public List getSalaryCircle(String e_id) {
		// TODO Auto-generated method stub
		return salaryDao.getSalaryCircle(e_id);
	}
	@Override
	public List getSalaryLine(String e_id) {
		// TODO Auto-generated method stub
		return salaryDao.getSalaryLine(e_id);
	}

}
