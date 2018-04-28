package com.pm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.pm.service.EvectionService;

@Controller
@RequestMapping("/evection")
public class EvectionController {

	@Autowired
	private EvectionService eService;
	@RequestMapping("/index")
	public ModelAndView evection(){
		ModelAndView mv = new ModelAndView();
		Gson gson = new Gson();
		mv.addObject("evectionOfDay",gson.toJson(getEvectionOfDay()));
		mv.addObject("evectionOfEvent", gson.toJson(getEvectionOfEvent()));
		mv.setViewName("evection");
		return mv;
	}
	/**
	 * 获取日程视图的出差信息
	 * @return
	 */
	@RequestMapping("/getEvectionOfDay")
	@ResponseBody
	public List getEvectionOfDay(){
		List list = new ArrayList<>();
		list = eService.getEvectionOfDay("zs000001");
		return list;
	}
	/**
	 * 获取事件视图的出差信息
	 * @return
	 */
	@RequestMapping("/getEvectionOfEvent")
	@ResponseBody
	public List getEvectionOfEvent(){
		List list = new ArrayList<>();
		list = eService.getEvectionOfEvent("zs000001");
		return list;
	}
}
