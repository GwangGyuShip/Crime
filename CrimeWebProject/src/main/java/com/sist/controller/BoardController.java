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
	
// 메인 리스트게시글 을 보여주기 위한 곳
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
	    int fromPage = ((curpage-1)/block*block)+1;  
	    int toPage = ((curpage-1)/block*block)+block; 
	      

	    if(toPage>totalpage)
	    	toPage=totalpage;
		List<BoardVO> list = dao.boardListData(map);
		model.addAttribute("list",list);
		return "freeboard/boardmain";
	}
	@RequestMapping("delete_ok2.do")
	public String board_delete2(){
		return "freeboard/delete_ok";
	}
	// 새글 입력
	@RequestMapping("insert.do")
	public String board_insert(){
		return "freeboard/insert";
	}
	// 새글입력 확인부
	@RequestMapping("insert_ok.do")
	public String main_insert_ok(BoardVO uploadForm){
		List<MultipartFile> list=uploadForm.getFiles();
		File ff=new File("c:\\download");
		if(!ff.exists())
			ff.mkdir();
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
	//내용보여주기
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
	//삭제하기 
	@RequestMapping("delete.do")
	public String freeboard_delete(int no,Model model){
		model.addAttribute("no",no);
		return "freeboard/delete";
	}
	//삭제확인 부분
	@RequestMapping("delete_ok.do")
	public String board_delete_ok(int no,String pwd){
		
		   boolean bCheck=dao.boardDelete(no, pwd);
		   
		   String a= "";
		   if(bCheck==true)
		   {
			   a= "redirect:/boardmain.do";
			   
		   }
		   else
		   {
			  a= "redirect:/delete_ok2.do";
		   }
		 
		   return a;
	}
}
