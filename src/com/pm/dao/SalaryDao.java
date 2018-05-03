package com.pm.dao;

import java.util.List;

public interface SalaryDao {

	List getSalaryById(String e_id);

	List getSalaryCircle(String e_id);

	List getSalaryLine(String e_id);

}
