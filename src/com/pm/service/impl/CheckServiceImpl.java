package com.pm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.CheckDao;
import com.pm.service.CheckService;


@Service
public class CheckServiceImpl implements CheckService{
	@Autowired
	private CheckDao checkDao;

	public List getCheck(){
		return checkDao.getCheck();
	}

	@Override
	public void insertCheck(Map m) throws Exception {
		// TODO Auto-generated method stub
		checkDao.insertCheck(m);
		return;
	}
}
