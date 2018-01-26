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
		
		List<CrimeRateVO> chartList=dao.CrimeChartData(c_gu);
		
		model.addAttribute("c_gu",c_gu);
		model.addAttribute("chartList",chartList);
		return "crimerate/chart_content";
	}
}
