package com.sist.controller;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.video.*;

@Controller
public class VideoController {
	@Autowired
	private VideoDAO dao;
	
	@RequestMapping("videolist.do")
	public String videolist(String page, Model model) {
		if(page==null)	//페이지가 null일때 1로 셋팅
			page="1";
		int curpage = Integer.parseInt(page);
		
		
		int rowSize = 10;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		int block=10;
		int fromPage = ((curpage-1)/block*block)+1;  //보여줄 페이지의 시작
		int toPage = ((curpage-1)/block*block)+block; //보여줄 페이지의 끝
		
		
		List<VideoVO> list = dao.videoListData(map);
		model.addAttribute("list", list);
		int totalpage = dao.videoTotalPage();
		if(toPage>totalpage)
			   toPage=totalpage;
		model.addAttribute("curpage",curpage);
		model.addAttribute("totalpage",totalpage);
		model.addAttribute("fromPage",fromPage);
		model.addAttribute("toPage",toPage);
		model.addAttribute("block",block);
		return "video/video";
	}
	
	@RequestMapping("videocontent.do")
	public String videocontent(int no, Model model) {
		VideoVO vo = dao.videoContentData(no);
		model.addAttribute("vo",vo);
		return "video/video_detail";
	}

}
