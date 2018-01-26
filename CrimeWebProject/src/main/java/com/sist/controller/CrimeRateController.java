package com.sist.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.net.URLDecoder;
import java.util.*;
import com.sist.crimerate.CrimeRateDAO;
import com.sist.crimerate.CrimeRateVO;

@Controller
public class CrimeRateController {
	
	@Autowired
	private CrimeRateDAO dao;
	
	@RequestMapping("crimerate.do")
	public String crimerate(Model model){

		String[] tempArr={"강남","강동","강북","강서","관악","광진","구로","금천","노원","도봉",
				"동대문","동작","마포","서대문","서초","성동","성북","송파","양천","영등포",
				"용산","은평","종로","중구","중랑"};
		List<String> guList=new ArrayList<String>();
		for(String s:tempArr){
			guList.add(s);
		}
		
		model.addAttribute("guList",guList);
		return "crimerate/crimerate";
	}
	
	@RequestMapping("crimeContent.do")
	public String crimeContent(String c_gu, Model model){
		
		CrimeRateVO tvo=dao.CrimeTotalData(c_gu);
		List<CrimeRateVO> clist=dao.CrimeContentData(c_gu);
		int c_count=dao.CrimeCctvData(c_gu);
		if(c_gu.equals("중구")){
			model.addAttribute("c_gu",c_gu);
		}else{
			model.addAttribute("c_gu",c_gu+"구");
		}
		
		model.addAttribute("c_count",c_count); //cctv 대수
		model.addAttribute("clist",clist); //
		model.addAttribute("tvo",tvo); //
		
		return "crimerate/crimerate_content";
	}
	
	@RequestMapping("chartContent.do")
	public String chartContent(String c_gu,Model model){
		
		model.addAttribute("c_gu",c_gu);
		return "crimerate/chart_content";
	}
}
