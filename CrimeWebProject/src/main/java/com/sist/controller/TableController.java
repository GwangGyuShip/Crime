package com.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class TableController {
@RequestMapping("table.do")
public String datatable(){
	return "datatable/table";
}
}
