package com.sist.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

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
	//============================================================================================================================
	@RequestMapping("delete_ok2.do")
	public String board_delete2(){
		return "freeboard/delete_ok";
	}

	//삭제하기 
	@RequestMapping("delete.do")
		public String freeboard_delete(int no,Model model){
			model.addAttribute("no",no);
			return "freeboard/bdelete";
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
	//============================================================================================================================
	
	// 새글 입력
	@RequestMapping("insert.do")
	public String board_insert(){
		return "freeboard/insert";
	}
	// 새글입력 확인부
	@RequestMapping("insert_ok.do")
	public String main_insert_ok(BoardVO uploadForm){
		List<MultipartFile> list=uploadForm.getFiles();
		File ff=new File("/home/sist/git/Crime/CrimeWebProject/src/main/webapp/freeboardpoto/");
		if(!ff.exists())
			ff.mkdir();
		if(list!=null && list.size()>0 )
		   {
			   String fn="";
			   String fs="";
			   for(MultipartFile mf:list)
			   {
				   
				   String name=mf.getOriginalFilename();
				   File file=new File("/home/sist/git/Crime/CrimeWebProject/src/main/webapp/freeboardpoto/"+name);
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
	//============================================================================================================================
	
	//내용보여주기
	@RequestMapping("bcontent.do")
	public String board_content(int no,Model model){
		BoardVO vo=dao.boardContentData(no);
		int filecount = vo.getFilecount();
		
		if(vo.getFilecount()>0){
			String[] files=vo.getFilename().split(",");
			model.addAttribute("files", files);
		}		
		
		model.addAttribute("filecount",filecount);
		model.addAttribute("vo",vo);
		return "freeboard/bcontent";
	}
	//============================================================================================================================
	// 수정하기 내용 보여주기
	@RequestMapping("update.do")
	public String freeboard_update(int no,Model model){
		BoardVO vo=dao.boardContentData(no);
		model.addAttribute("no",no);
		model.addAttribute("vo",vo);
		return "freeboard/update";
	}
	
	@RequestMapping("update_ok.do")
	public String update_ok(BoardVO vo,Model model){
		boolean bCheck=dao.freeBoardUpDate(vo);
		model.addAttribute("bCheck",bCheck);
		model.addAttribute("no",vo.getBoard_no());
		return "freeboard/update_ok";
	}
	//============================================================================================================================
	@RequestMapping("download.do")
	   public void board_download(String fn,HttpServletResponse res)
	   {
		   try
		   {
			   System.out.println("a"+fn);
			   File file=new File("/home/sist/Project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/CrimeWebProject/freeboardpoto/"+fn);
			   
			   res.setHeader("Content-Disposition", "attachment;filename="
			                  +URLEncoder.encode(fn, "utf-8"));
			   res.setContentLength((int)file.length());
			   BufferedInputStream bis=
					  new BufferedInputStream(new FileInputStream(file));
			   BufferedOutputStream bos=
					  new BufferedOutputStream(res.getOutputStream());
			   
			   int i=0;
			   byte[] buffer=new byte[1024];
			   while((i=bis.read(buffer, 0, 1024))!=-1)
			   {
				   bos.write(buffer, 0, i);
			   }
			   bis.close();
			   bos.close();
			   
		   }catch(Exception ex)
		   {
			   System.out.println(ex.getMessage());
		   }
	   }
	//============================================================================================================================
	@RequestMapping("freesearch.do")
	public String board_freesearch(String freesearch,String search,Model model){
		String board_name = "";
		String bsearch = search;
		if(freesearch.equals("f1")){
			board_name="board_name";
			List<BoardVO> list=dao.searchboardname(bsearch);
			model.addAttribute("list",list);
			
		}else if(freesearch.equals("f2")){
			board_name="board_subject";
			List<BoardVO> list=dao.searchboardsubject(bsearch);
			model.addAttribute("list",list);
			
		}else if(freesearch.equals("f3")){
			board_name="board_content";
			List<BoardVO> list=dao.searchboardcontent(bsearch);
			model.addAttribute("list",list);
		}
		
		return "freeboard/boardmain";
	}
	//===========================================================================================================================
	@RequestMapping("area_select.do")
	public String board_area_select(String board_area, Model model,String page){
		
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
		    map.put("board_area", board_area);
		    map.put("start", start);
		    map.put("end",end);
		    // list 형식으로 VO 를 담아 SQL에 대한 값을 가져옴
			List<BoardVO> list = dao.board_area_select(map);
			// 그것을 보내주기 위해 model 에 담고 list를 보내준다.
			model.addAttribute("list",list);
			// 토탈페이지 구하기 위한 SQL구문
			int totalpage=dao.areaBoardPage();
			//시작페이지 전송
			model.addAttribute("curpage",curpage);
			//토탈 페이지 
			model.addAttribute("totalpage",totalpage);
			//모든 값은 BoardMain 에전송하여 JSP에서 활용 하도록 하는것
		
		return "freeboard/board_list";
	}
	@RequestMapping("group_select.do")
	public String board_group_select(String board_group, Model model,String page){
		
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
		    map.put("board_group", board_group);
		    map.put("start", start);
		    map.put("end",end);
		    // list 형식으로 VO 를 담아 SQL에 대한 값을 가져옴
			List<BoardVO> list = dao.board_group_select(map);
			// 그것을 보내주기 위해 model 에 담고 list를 보내준다.
			model.addAttribute("list",list);
			// 토탈페이지 구하기 위한 SQL구문
			int totalpage=dao.freeBoardTotalPage();
			//시작페이지 전송
			model.addAttribute("curpage",curpage);
			//토탈 페이지 
			model.addAttribute("totalpage",totalpage);
			//모든 값은 BoardMain 에전송하여 JSP에서 활용 하도록 하는것
		
		return "freeboard/board_list";
	}
}
