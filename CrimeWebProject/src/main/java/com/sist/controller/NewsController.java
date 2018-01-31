package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.news.NewsDAO;
import com.sist.news.NewsVO;
import com.sist.news.newsRManager;
import com.sist.newsManager.NewsManager;

@Controller
public class NewsController {
	@Autowired
	private NewsDAO dao;
	@Autowired
	private NewsManager nm;
	@Autowired
	private newsRManager nrm;
	
	
	@RequestMapping("news.do")
	public String news(String page,String data,Model model){
		if(data==null)
			data="범죄경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="news";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		
		dao.newsCreatDataFile();
		nrm.crimeGraph();
		
		return "news/News";
	}
	
	@RequestMapping("muderNews.do")
	public String muder_news(String page,String data,Model model){
		if(data==null)
			data="살인경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="muderNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
	
	@RequestMapping("violenceNews.do")
	public String violence_news(String page,String data,Model model){
		if(data==null)
			data="폭행경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="violenceNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
	
	@RequestMapping("theftNews.do")
	public String theft_news(String page,String data,Model model){
		if(data==null)
			data="절도경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="theftNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
	
	@RequestMapping("sexualCrimeNews.do")
	public String sexualCrime_news(String page,String data,Model model){
		if(data==null)
			data="성범죄경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="sexualCrimeNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
	
	@RequestMapping("arsonNews.do")
	public String arson_news(String page,String data,Model model){
		if(data==null)
			data="방화경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="arsonNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
	
	@RequestMapping("fraudNews.do")
	public String fraud_news(String page,String data,Model model){
		if(data==null)
			data="사기경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="fraudNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
	
	@RequestMapping("threatNews.do")
	public String threat_news(String page,String data,Model model){
		if(data==null)
			data="협박경찰";
		nm.newsCrimeSearch(data);
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		List<NewsVO> list=dao.newsCrimeListData(curpage);
		
		String pageName="threatNews";
		model.addAttribute("pageName", pageName);
		model.addAttribute("list", list);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", 8);
		model.addAttribute("data", data);
		return "news/News";
	}
}