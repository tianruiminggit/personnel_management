package com.pm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.DeptDao;
import com.pm.service.DeptService;

@Service
public class DeptServiceImpl implements DeptService{

	@Autowired
	private DeptDao deptDao;
	@Override
	public List getDept(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return deptDao.getDept(param);
	}
	@Override
	public int insertDept(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return deptDao.insertDept(param);
	}

}
