package com.pm.dao;

import java.util.List;
import java.util.Map;

import com.pm.pojo.Employee;

public interface EmployeeDao {

	List getEmployee();

	Employee getEmployeeById(String e_id);

	List getPeople();

	Object getPeopleById(String p_id);

	List getPeople(Map param);

	List getEmployee(Map<String, Object> param);

	int deletePeople(String p_id);

}
