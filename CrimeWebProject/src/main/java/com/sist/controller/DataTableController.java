package com.sist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.datatable.DataTableDAO;
import com.sist.datatable.DataTableVO;

import java.util.*;

@Controller
public class DataTableController {
	
	@Autowired
	DataTableDAO dao;
	
	@RequestMapping("datatable_content.do")
	public String datatable_content(Model model, int c_year){
		
		List<DataTableVO> list = dao.databoardlist(c_year);
		
		model.addAttribute("c_year", c_year);
		model.addAttribute("list", list);
		
		return "crimerate/datatable_content";
	}
	
}
