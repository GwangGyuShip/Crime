package com.sist.controller;

import java.io.*;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.sist.freeboard.BoardVO;
import com.sist.photo.AddressVO;
import com.sist.photo.PhotoDAO;
import com.sist.photo.PhotoVO;

@Controller
public class PhotoController {
	@Autowired
	private PhotoDAO dao;

	@RequestMapping("photolist.do")
	public String photolist(Model model) {
		List<AddressVO> list = dao.kangcheck("강남");
		
		
		int curpage = 1;
		int rowSize = 6;
		int start = (rowSize * curpage) - (rowSize - 1);
		int end = rowSize * curpage;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("gu", "강서구");
		List<PhotoVO> list2 = dao.p_ContentList(map);
		for (int k = 0; k < list2.size(); k++) {
			String name = list2.get(k).getFilename();
			if (name.length() > 16) {
				name = name.substring(0, name.indexOf(","));
				list2.get(k).setFilename(name);
			}
		}
		List<PhotoVO> list3 = dao.rank("강서구");
		for (int k = 0; k < list3.size(); k++) {
			String name = list3.get(k).getFilename();
			if (name.length() > 16) {
				name = name.substring(0, name.indexOf(","));
				list3.get(k).setFilename(name);
			}
			System.out.println(list3.get(k).getFilename());
		}
		
		
		int totalpage = dao.photoTotalPage("강서구");
		model.addAttribute("list", list);
		model.addAttribute("gu", "강서구");
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", totalpage);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		
		
		
		
		
		/*model.addAttribute("list", list);*/
		return "photo/photolist";
	}

	@RequestMapping("guchoice.do")
	public String guchoice(String gu, String page, Model model) {
		List<AddressVO> list = dao.kangcheck("강남");
		if (page == null) {
			page = "1";
		}
		int curpage = Integer.parseInt(page);
		int rowSize = 6;
		int start = (rowSize * curpage) - (rowSize - 1);
		int end = rowSize * curpage;
		Map map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("gu", gu);
		List<PhotoVO> list2 = dao.p_ContentList(map);
		
		for (int k = 0; k < list2.size(); k++) {
			String name = list2.get(k).getFilename();
			if (name.length() > 16) {
				name = name.substring(0, name.indexOf(","));
				list2.get(k).setFilename(name);
			}
		}
		
		
		int totalpage = dao.photoTotalPage(gu);
		model.addAttribute("list", list);
		model.addAttribute("gu", gu);
		model.addAttribute("curpage", curpage);
		model.addAttribute("totalpage", totalpage);
		model.addAttribute("list2", list2);
		
		return "photo/photolist";
	}

	@RequestMapping("photoinsert.do")
	public String photoinsert(Model model, String kang) {
		String kang1 = kang;
		if (kang1 == null)
			kang1 = "강남";

		List<AddressVO> list = dao.kangcheck(kang1);

		model.addAttribute("list", list);
		return "photo/photoinsert";
	}

	@RequestMapping("photocontent.do")
	public String photocontent(Model model, String no) {
		int checkno = Integer.parseInt(no);
		PhotoVO vo = dao.p_content(checkno);
		String [] name = vo.getFilename().split(",");
		model.addAttribute("vo",vo);
		model.addAttribute("name",name);
	
		
		return "photo/photocontent";
	}

	@RequestMapping("photokang.do")
	public String kangcheck(Model model, String kang) {

		List<AddressVO> list = dao.kangcheck(kang);

		model.addAttribute("list", list);
		model.addAttribute("kang", kang);
		return "photo/photolist";
	}

	@RequestMapping("p_board_insert.do")
	public String photo_insert(Model model, PhotoVO uploadForm) {

		List<MultipartFile> list = uploadForm.getFile();

		String path = "/home/sist/bigdataDev/bigdataStudy/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/CrimeWebProject/gallery/";
		File ff = new File(path);
		uploadForm.setNo(dao.nocheck());

		if (!ff.exists())
			ff.mkdir();// 다운로더 폴더가 없으면 말들어주라는 메소드

		if (list != null && list.size() > 0) {
			String fn = "";
			String fs = "";
			int count = 0;
			for (MultipartFile mf : list) {

				String name = mf.getOriginalFilename();
				String name2 = uploadForm.getGu() + "_" + uploadForm.getNo() + "_" + count + ".jpg";

				File file1 = new File(path + name);
				File file2 = new File(path + name2);

				if (file1.renameTo(file2)) {
					System.out.println("파일 성공");
				}

				try {
					mf.transferTo(file2);
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
				fn += name2 + ",";
				count++;
			}
			uploadForm.setFilename(fn.substring(0, fn.lastIndexOf(",")));
			uploadForm.setFilecount(list.size());

		} else {
			uploadForm.setFilename("");
			uploadForm.setFilecount(0);

		}

		dao.boardInsert(uploadForm);

		return "redirect:photolist.do";
	}
	@RequestMapping("goodup.do")
	public String goodup(String no){
		int num = Integer.parseInt(no);
		dao.goodup(num);
		return "redirect:photolist.do";
	}
	@RequestMapping("p_delete_ok.do")
	public String p_delete_ok(String no){
		int num = Integer.parseInt(no);
		dao.goodup(num);
		return "redirect:photolist.do";
	}
	@RequestMapping("p_delete.do")
	public String p_delete(String no){
		int num = Integer.parseInt(no);
		dao.goodup(num);
		return "redirect:photolist.do";
	}

}