package com.sist.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.freeboard.BoardVO;
import com.sist.main.MainDAO;
import com.sist.news.NewsVO;
import com.sist.video.VideoVO;


@Controller
public class MainController {
	@Autowired
	private MainDAO dao;
	
	@RequestMapping("main.do")
	public String crimerate(Model model){
		List<BoardVO> mBoard = new ArrayList<BoardVO>();
		List<NewsVO> mNews = new ArrayList<NewsVO>();
		List<String> sortList = new ArrayList<String>();
		List<VideoVO> mVideo = new ArrayList<VideoVO>();
		
		mBoard = dao.mainBoardList();
		mNews = dao.newsSearch();
		sortList = dao.mainVideoSort();
		
		for(String s : sortList) {
			mVideo.add(dao.mainVideoList(s));
		}
		
		model.addAttribute("mBoard", mBoard);
		model.addAttribute("mNews", mNews);
		model.addAttribute("mVideo", mVideo);
		
		return "main";
	}
}