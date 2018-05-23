package com.pm.dao;

import java.util.List;
import java.util.Map;

public interface EvectionDao {

	List getEvectionOfDay(String e_id);

	List getEvectionOfEvent(String e_id);

	int insertEvection(Map<String, Object> param);

}
