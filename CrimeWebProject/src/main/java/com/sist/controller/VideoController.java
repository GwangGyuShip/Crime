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
		List<VideoVO> list_top7 = dao.videoTop7ListData(map);
		model.addAttribute("list", list);
		model.addAttribute("list_top7", list_top7);
		
		VideoVO v1 = list_top7.get(0);
		VideoVO v2 = list_top7.get(1);
		VideoVO v3 = list_top7.get(2);
		VideoVO v4 = list_top7.get(3);
		VideoVO v5 = list_top7.get(4);
		VideoVO v6 = list_top7.get(5);
		VideoVO v7 = list_top7.get(6);
		model.addAttribute("v1", v1);
		model.addAttribute("v2", v2);
		model.addAttribute("v3", v3);
		model.addAttribute("v4", v4);
		model.addAttribute("v5", v5);
		model.addAttribute("v6", v6);
		model.addAttribute("v7", v7);
		
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
		List<VideoReplyVO> relist = dao.videoreplyListData(no);
		model.addAttribute("vo",vo);
		model.addAttribute("relist", relist);
		return "video/video_detail";
	}
	
	@RequestMapping("videoreplyinsert.do")
	public String videoreplyInsert(VideoReplyVO vo) {
		dao.videoreplyInsert(vo);
		int bno = vo.getBno();
		return "redirect:/video/video_detail.do?no="+bno;
	}
	
	@RequestMapping("videoreplyupdate.do")
	public String videoreplyUpdate(int no, Model model) {
		VideoReplyVO vo = dao.videoreplyUpdateData(no);
		model.addAttribute("vo", vo);
		return "update";
	}
	
	@RequestMapping("videoreplydelete.do")
	public String videoreplyDelete(int no, Model model) {
		model.addAttribute("no", no);
		return "delete";
	}
	

}
