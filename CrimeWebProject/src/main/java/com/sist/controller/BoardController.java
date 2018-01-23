package com.sist.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.sist.freeboard.BoardDAO;
import com.sist.freeboard.BoardVO;

@Controller
public class BoardController {
	
	
	@Autowired
	private BoardDAO dao;
	

	@RequestMapping("boardmain.do")
		public String main_list(String page,Model model){
		if(page==null){
			page="1";
		}
		int curpage=Integer.parseInt(page);
	    int rowSize=5;
	    int start= (rowSize*curpage)-(rowSize-1);
	    int end= rowSize*curpage;
	    int totalpage=0;
	    
	    Map map=new HashMap();
	    map.put("start", start);
	    map.put("end",end);
	      
	    int block=10;
	    int fromPage = ((curpage-1)/block*block)+1;  //보여줄 페이지의 시작
	    int toPage = ((curpage-1)/block*block)+block; //보여줄 페이지의 끝
	      

	    if(toPage>totalpage)
	    	toPage=totalpage;
		List<BoardVO> list = dao.boardListData(map);
		model.addAttribute("list",list);
		return "freeboard/boardmain";
	}
	
	@RequestMapping("insert.do")
	public String board_insert(){
		return "freeboard/insert";
	}
	@RequestMapping("insert_ok.do")
	public String main_insert_ok(BoardVO uploadForm){
		List<MultipartFile> list=uploadForm.getFiles();
		File ff=new File("c:\\download");
		if(!ff.exists())
			ff.mkdir();
		System.out.println("이름:"+uploadForm.getBoard_name());
		if(list!=null && list.size()>0 )
		   {
			   String fn="";
			   String fs="";
			   for(MultipartFile mf:list)
			   {
				   
				   String name=mf.getOriginalFilename();
				   File file=new File("c:\\download\\"+name);
				   try
				   {
				     mf.transferTo(file);
				   }catch(Exception e){}
				   fn+=name+",";
				   fs+=file.length()+",";
			   }
			   uploadForm.setFilename(fn.substring(0,fn.lastIndexOf(",")));
			   uploadForm.setFilesize(fs.substring(0,fs.lastIndexOf(",")));
			   uploadForm.setFilecount(list.size());
		   }
		   else
		   {
			   uploadForm.setFilename("");
			   uploadForm.setFilesize("");
			   uploadForm.setFilecount(0);
			    
		   }
		   
		  dao.boardInsert(uploadForm);
		return "redirect:/boardmain.do";
	}
	@RequestMapping("bcontent.do")
	public String board_content(int no,Model model){
		BoardVO vo=dao.boardContentData(no);
		if(vo.getFilecount()>0){
			String[] files=vo.getFilename().split(",");
			model.addAttribute("files", files);
		}
		model.addAttribute("vo",vo);
		return "freeboard/bcontent";
	}
	
}
