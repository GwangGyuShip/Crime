package com.sist.controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;

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
		if(page==null)	
			page="1";
		int curpage = Integer.parseInt(page);
		
		
		int rowSize = 10;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		int block=10;
		int fromPage = ((curpage-1)/block*block)+1;  
		int toPage = ((curpage-1)/block*block)+block;
		
		
		List<VideoVO> list = dao.videoListData(map);
		for(VideoVO vo:list) {
			vo.setCount(dao.videoreplyCount(vo.getNo()));
		}
		List<VideoVO> list_top7 = dao.videoTop7ListData(map);
		for(VideoVO top7vo:list_top7) {
			top7vo.setCount(dao.videoreplyCount(top7vo.getNo()));
		}
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
		
		List<VideoVO> list_replybest = dao.videoreplybest(map);
		model.addAttribute("list_replybest", list_replybest);
		
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
		vo.setCount(dao.videoreplyCount(no));
		
		String[] temp = dao.videoContentData(no).getTitle().split(" ");
		
		int lsize = 0;
		if(temp.length>=4) {
			lsize = 4;
		} else {
			lsize = temp.length;
		}
		for(int i=0;i<lsize;i++) {
			temp[i]=temp[i].replace("[", "");
			temp[i]=temp[i].replace("]", "");
			temp[i]=temp[i].replace("\'", "");
			temp[i]=temp[i].replace("\"", "");
			temp[i]=temp[i].replace(",", "");
			temp[i]=temp[i].replace(".", "");
			temp[i]=temp[i].replace("(", "");
			temp[i]=temp[i].replace(")", "");
		}
		
		vo.setKeyword1("%"+temp[0]+"%");
		vo.setKeyword2("%"+temp[1]+"%");
		vo.setKeyword3("%"+temp[2]+"%");
		vo.setKeyword4("%"+temp[3]+"%");
		
		Map map = new HashMap();
		map.put("keyword1", vo.getKeyword1());
		map.put("keyword2", vo.getKeyword2());
		map.put("keyword3", vo.getKeyword3());
		map.put("keyword4", vo.getKeyword4());
		
		List<VideoVO> relatedlist = dao.relatedvlist(map);
		
		model.addAttribute("vo",vo);
		model.addAttribute("relist", relist);
		model.addAttribute("relatedlist", relatedlist);
		return "video/video_detail";
	}
	
	@RequestMapping("videoreplyinsert.do")
	public String videoreplyInsert(VideoReplyVO vo, HttpServletRequest req) {
		String bno = req.getParameter("bno");
		String name = req.getParameter("name");
		String pwd = req.getParameter("pwd");
		String msg = req.getParameter("msg");
		vo.setBno(Integer.parseInt(bno));
		vo.setName(name);
		vo.setPwd(pwd);
		vo.setMsg(msg);
		dao.videoreplyInsert(vo);
		return "redirect:videocontent.do?no="+bno;
	}
	
	
	

}
