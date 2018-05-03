package com.pm.service;

import java.util.List;
import java.util.Map;

import com.pm.pojo.Employee;

public interface EmployeeService {

	List getEmployee();

	Employee getEmployeeById(String e_id);

	List getPeople();

	Object getPeopleById(String p_id);

	Map getPeople(Map param);

	Map<String, Object> getEmployee(Map<String, Object> param);

	int deletePeople(String p_id);


}
