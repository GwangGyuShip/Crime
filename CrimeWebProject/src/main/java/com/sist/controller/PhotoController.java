package com.sist.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sist.photo.AddressVO;
import com.sist.photo.PhotoDAO;

@Controller
public class PhotoController {
	@Autowired
	private PhotoDAO dao;

	@RequestMapping("photolist.do")
	public String photolist(Model model) {
		List<AddressVO> list = dao.kangcheck("강남");

		model.addAttribute("list", list);
		return "photo/photolist";
	}

	@RequestMapping("photoinsert.do")
	public String photoinsert(Model model,String kang) {
		String kang1 = kang;
		if(kang1==null)
			kang1="강남";
		
		List<AddressVO> list = dao.kangcheck(kang1);
		System.out.println(kang1);
		
		model.addAttribute("list", list);
		return "photo/photoinsert";
	}

	@RequestMapping("photocontent.do")
	public String photocontent() {
		return "photo/photocontent";
	}

	@RequestMapping("photokang.do")
	public String kangcheck(Model model, String kang) {
	
		List<AddressVO> list = dao.kangcheck(kang);

		model.addAttribute("list", list);

		return "photo/photolist";
		
	}

}
