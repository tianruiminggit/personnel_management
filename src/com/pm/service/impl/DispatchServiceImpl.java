package com.pm.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.DispatchDao;
import com.pm.service.DispatchService;

@Service
public class DispatchServiceImpl implements DispatchService{

	@Autowired
	private DispatchDao disDao;
	@Override
	public ArrayList<Object> getDispatchById(String e_id) {
		// TODO Auto-generated method stub
		return disDao.getDispatchById(e_id);
	}

}
