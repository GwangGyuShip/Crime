package com.sist.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.crimerate.CrimeChartDAO;
import com.sist.crimerate.CrimeRateVO;
import com.sist.freeboard.BoardVO;
import com.sist.main.MainDAO;
import com.sist.news.NewsVO;
import com.sist.video.VideoVO;



@Controller
public class MainController {
	@Autowired
	private MainDAO dao;
	@Autowired
	private CrimeChartDAO chartDao;
	
	@RequestMapping("main.do")
	public String crimerate(Model model){
		List<BoardVO> mBoard = new ArrayList<BoardVO>();
		List<NewsVO> mNews = new ArrayList<NewsVO>();
		List<String> sortList = new ArrayList<String>();
		List<VideoVO> mVideo = new ArrayList<VideoVO>();
		List<CrimeRateVO> mCrime = new ArrayList<CrimeRateVO>();
		
		mBoard = dao.mainBoardList();
		mNews = dao.newsSearch();
		sortList = dao.mainVideoSort();
		mCrime = dao.mainCrimeList();
		
		for(String s : sortList) {
			mVideo.add(dao.mainVideoList(s));
		}
		
		Map map=new HashMap();
		
		List<String> guList=new ArrayList<String>();//체크된 구 이름을 받을 리스트
		guList.add("강남");
		guList.add("송파");
		guList.add("영등포");
		map.put("guList",guList);
		List<CrimeRateVO> guchList=chartDao.chartAvgData(map);// 체크된 구의 5대범죄 평균값을 담을 리스트
		
		model.addAttribute("guchList",guchList);
		model.addAttribute("mBoard", mBoard);
		model.addAttribute("mNews", mNews);
		model.addAttribute("mVideo", mVideo);
		model.addAttribute("mCrime", mCrime);
		
		return "main";
	}
}