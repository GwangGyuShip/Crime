package com.sist.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
	// 페이징 하기위해 page, 보내주는 값이 있어서 model	
	public String main_list(String page,Model model){
		//기본 첫 페이지 페이지는 null값이니 1로 설정 ( 스트링 값으로 )
		if(page==null){
			page="1";
		}
		//스트링으로 받은 값을 숫자로 변환
		int curpage=Integer.parseInt(page);
		// 게시글 갯수 나타내기
	    int rowSize=10;
	    // 시작페이지 구하기
	    int start= (rowSize*curpage)-(rowSize-1);
	    // 마지막 페이지 구하기
	    int end= rowSize*curpage;
	    
	    // 맵에 저장 키와 값 전송
	    Map map=new HashMap();
	    map.put("start", start);
	    map.put("end",end);
	    // list 형식으로 VO 를 담아 SQL에 대한 값을 가져옴
		List<BoardVO> list = dao.boardListData(map);
		// 그것을 보내주기 위해 model 에 담고 list를 보내준다.
		model.addAttribute("list",list);
		// 토탈페이지 구하기 위한 SQL구문
		int totalpage=dao.freeBoardTotalPage();
		//시작페이지 전송
		model.addAttribute("curpage",curpage);
		//토탈 페이지 
		model.addAttribute("totalpage",totalpage);
		//모든 값은 BoardMain 에전송하여 JSP에서 활용 하도록 하는것
		
		return "freeboard/boardmain";
	}
	
	@RequestMapping("delete_ok2.do")
	public String board_delete2(){
		return "freeboard/delete_ok";
	}
	@RequestMapping("update_ok.do")
	public String board_update(){
		return "freeboard/update_ok";
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
		return "freeboard/bdelete";
	}
	@RequestMapping("update.do")
	public String freeboard_update(int no,Model model){
		model.addAttribute("no",no);
		return "freeboard/update";
	}
	//삭제확인 부분 bdelete 에서 넘어와 비밀번호를 확인한다.
	@RequestMapping("delete_ok.do")
	// no는 게시글 번호를 확인하고 pwd는 비밀번호를 확인한다.
	public String board_delete_ok(int no,String pwd){
		// 비밀번호가맞는지위해 모델쪽으로보낸다.
		   boolean bCheck=dao.boardDelete(no, pwd);
		   //리턴값을 주기위해 하나 선언
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
	@RequestMapping("main/update.do")
	public String board_update(int no,Model model)
	{
		BoardVO vo=dao.boardUpdateData(no);
		model.addAttribute("vo", vo);
		return "update";
	}
	@RequestMapping("main/update_ok.do")
	public String update_ok(BoardVO vo){
		String data="";
		boolean bCheck=dao.boardUpdate(vo);
		if(bCheck==true){
			data="redirect:/boardmain.do";
		}
		else{
			data="redirect:/update_ok.do";
		}
		return data;
	}
}
