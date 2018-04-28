package com.pm.service;

import java.util.List;

import com.pm.pojo.Employee;

public interface EmployeeService {

	List getEmployee();

	Employee getEmployeeById(String e_id);

	List getPeople();

	Object getPeopleById(String p_id);


}
