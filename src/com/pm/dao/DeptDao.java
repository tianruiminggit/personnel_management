package com.pm.dao;

import java.util.List;
import java.util.Map;

public interface DeptDao {

	List getDept(Map<String, Object> param);

	int insertDept(Map<String, Object> param);

}
