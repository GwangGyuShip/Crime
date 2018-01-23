package com.sist.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CrimeRateController {
	@RequestMapping("crimerate.do")
	public String crimerate(){
		//けけけいいいい
		return "crimerate/crimerate";
	}
	
}
