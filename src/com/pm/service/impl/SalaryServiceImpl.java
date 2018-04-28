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

}
