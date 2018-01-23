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
		if(page==null)	//�������� null�϶� 1�� ����
			page="1";
		int curpage = Integer.parseInt(page);
		int totalpage=0;
		Map map = new HashMap();
		int rowSize = 10;
		int start = (rowSize*curpage)-(rowSize-1);
		int end = rowSize*curpage;
		
		int block=10;
		int fromPage = ((curpage-1)/block*block)+1;  //������ �������� ����
		int toPage = ((curpage-1)/block*block)+block; //������ �������� ��
		
		map.put("start", start);
		map.put("end", end);
		List<VideoVO> list = dao.videoListData(map);
		model.addAttribute("list", list);
		totalpage = dao.videoTotalPage();
		if(toPage>totalpage)
			   toPage=totalpage;
		model.addAttribute("curpage",curpage);
		model.addAttribute("totalpage",totalpage);
		return "video/video";
	}

}
