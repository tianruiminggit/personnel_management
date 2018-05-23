package com.pm.service;

import java.util.List;
import java.util.Map;

public interface EvectionService {

	List getEvectionOfDay(String e_id);

	List getEvectionOfEvent(String e_id);

	int insertEvection(Map<String, Object> param);

}
