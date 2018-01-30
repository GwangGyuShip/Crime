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
	
	@RequestMapping("datatable.do")
	public String datatable(Model model){
		
		List<DataTableVO> list = dao.databoardlist(2016);
		
		model.addAttribute("list", list);
		
		return "datatable/datatable";
	}
}
