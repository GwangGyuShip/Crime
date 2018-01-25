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
	public String crimerate(){

		return "crimerate/crimerate";
	}
	
	@RequestMapping("crimeContent.do")
	public String crimeContent(String c_gu, Model model){
		
		CrimeRateVO tvo=dao.CrimeTotalData(c_gu);
		List<CrimeRateVO> clist=dao.CrimeContentData(c_gu);
		if(!(c_gu.equals("Áß±¸"))){
			model.addAttribute("c_gu",c_gu+"±¸");
		}
		model.addAttribute("c_gu",c_gu);
		model.addAttribute("clist",clist);
		model.addAttribute("tvo",tvo);
		
		return "crimerate/crimerate_content";
	}
}
