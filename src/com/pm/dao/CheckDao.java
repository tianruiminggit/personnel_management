package com.pm.dao;

import java.util.List;
import java.util.Map;

public interface CheckDao {

	List getCheck();

	void insertCheck(Map m) throws Exception;

}
