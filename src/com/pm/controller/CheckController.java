package com.pm.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.pm.service.CheckService;

@Controller
@RequestMapping("/check")
public class CheckController {
	@Autowired
	private CheckService checkService;
	/***
	 * ҳ��չʾ,�����ѯ����
	 * @param request
	 * @return
	 */
	@RequestMapping("/index")
	public ModelAndView check(HttpServletRequest request){
		ModelAndView mv =new ModelAndView();
		Gson gson = new Gson();
		mv.addObject("checkList", gson.toJson(getCheck()));
		mv.setViewName("check");
		request.getSession().setAttribute("eid", "zs00001");
		return mv;
	}
	/***
	 * �򿨹���(���)
	 * @param request
	 * @return
	 */
	@RequestMapping("/insertCheck")
	@ResponseBody
	public Object insertCheck(HttpServletRequest request){
		String type="";
		SimpleDateFormat sdf1 = new SimpleDateFormat("aa",Locale.CHINESE);
//		SimpleDateFormat sdf2 = new SimpleDateFormat("YYYY-MM-DD HH:mm:ss");
		SimpleDateFormat sdf3 = new SimpleDateFormat("YYYYMMDD");
		String time = sdf1.format(new Date());
		if(time.equals("����")) type="1";
		else type="2";
		try {
			Map m = new HashMap();
			m.put("type", type);
//			m.put("time", sdf2.format(new Date()));
			m.put("id", request.getSession().getAttribute("eid")+sdf3.format(new Date())+type);
			m.put("eid", request.getSession().getAttribute("eid"));
			checkService.insertCheck(m);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			if("ORA-00001".equals(e.getCause().toString().substring(23, 32))){
				Map m = new HashMap();
				m.put("context", "�Ѿ��ɹ���");
				m.put("type", "warning");
				return m;
			} else{
				Map m = new HashMap();
				m.put("context", "ϵͳ��������ϵ����Ա");
				m.put("type", "error");
				return m;
			}
		}
		Map m = new HashMap();
		m.put("context", "�򿨳ɹ�");
		m.put("type", "success");
		return m;
	}
	/**
	 * ��ѯ
	 * @return
	 */
	@RequestMapping("getCheck")
	@ResponseBody
	public List getCheck(){
		List list = new ArrayList<>();
		list = checkService.getCheck();
		return list;
	}
}
