package com.pm.service;

import java.util.List;
import java.util.Map;

public interface DeptService {

	List getDept(Map<String, Object> param);

	int insertDept(Map<String, Object> param);

}
