package com.sist.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.freeboard.BoardVO;
import com.sist.main.Item;
import com.sist.main.MainDAO;


@Controller
public class MainController {
	@Autowired
	private MainDAO dao;
	
	@RequestMapping("main.do")
	public String crimerate(Model model){
		List<BoardVO> mBoard = new ArrayList<BoardVO>();
		List<Item> mNews = new ArrayList<Item>();
		
		mBoard = dao.mainBoardList();
		mNews = dao.newsSearch();
		
		model.addAttribute("mBoard", mBoard);
		model.addAttribute("mNews", mNews);
		
		return "main";
	}
}
