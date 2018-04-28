package com.pm.dao;

import java.util.List;

import com.pm.pojo.Employee;

public interface EmployeeDao {

	List getEmployee();

	Employee getEmployeeById(String e_id);

	List getPeople();

	Object getPeopleById(String p_id);

}
