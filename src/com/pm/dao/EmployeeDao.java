package com.pm.dao;

import java.util.List;
import java.util.Map;

import com.pm.pojo.Employee;
import com.pm.pojo.People;

public interface EmployeeDao {

	List getEmployee();

	Employee getEmployeeById(String e_id);

	List getPeople();

	Object getPeopleById(String p_id);

	List getPeople(Map param);

	List getEmployee(Map<String, Object> param);

	int deletePeople(String p_id);

	int addPeople(People people);

	int updateEmp(Employee emp);

	List getDept();

	List getEmployeeBar();

	int upIMG(Map<String, Object> param);

	Map<String, Object> getIMG(Map<String, Object> param);

	int employePeople(Map<String, Object> param);


}
