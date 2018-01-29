package com.sist.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.net.URLDecoder;
import java.util.*;

import com.sist.crimerate.CrimeChartDAO;
import com.sist.crimerate.CrimeRateDAO;
import com.sist.crimerate.CrimeRateVO;

@Controller
public class CrimeRateController {
	
	@Autowired
	private CrimeRateDAO dao;
	
	@Autowired
	private CrimeChartDAO chartdao;
	
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
	public String chartContent(String c_gu, Model model){
		
		String[] arr=c_gu.split(","); //체크박스에 체크된 내용을 받아와서 ,를 기준으로 자른다음 배열에 주입
		
		List<String> guList=new ArrayList<String>();
		//mybatis에서 parameterType은 List만 인식하므로 배열에 담은 값을 List에 옮긴 후 map에 주입 
		for(String s:arr){
			guList.add(s);
		}
		Map map=new HashMap();
		map.put("guList", guList);
		
		List<CrimeRateVO> guchList = chartdao.totalChartData(map); //체크된 구에 해당하는 데이터를 List에 주입
		model.addAttribute("guchList",guchList);
		return "crimerate/chart_content";
	}
}
