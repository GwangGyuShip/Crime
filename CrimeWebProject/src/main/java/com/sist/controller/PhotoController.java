package com.sist.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PhotoController {

	@RequestMapping("photolist.do")
	public String photolist() {
		return "photo/photolist";
	}
	@RequestMapping("photoinsert.do")
	public String photoinsert() {
		return "photo/photoinsert";
	}
	@RequestMapping("photocontent.do")
	public String photocontent() {
		return "photo/photocontent";
	}

}
