package com.pm.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pm.dao.EvectionDao;
import com.pm.service.EvectionService;

@Service
public class EvectionServiceImpl implements EvectionService{

	@Autowired
	private EvectionDao eDao;

	@Override
	public List getEvectionOfDay(String e_id) {
		// TODO Auto-generated method stub
		return eDao.getEvectionOfDay(e_id);
	}

	@Override
	public List getEvectionOfEvent(String e_id) {
		// TODO Auto-generated method stub
		return eDao.getEvectionOfEvent(e_id);
	}

	@Override
	public int insertEvection(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return eDao.insertEvection(param);
	}
}
