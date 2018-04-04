package com.pm.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

public interface CheckService {

	List getCheck();

	void insertCheck(Map m) throws Exception;
}
