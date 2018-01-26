package com.sist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sist.video.VideoDAO;
import com.sist.video.VideoReplyVO;

@RestController
public class VideoRestController {
	@Autowired
	private VideoDAO dao;
	
	@RequestMapping("videoreplyupdate_ok.do")
	public String replyupdate_ok(VideoReplyVO vo) {
		String data = "";
		boolean bCheck = dao.videoreplyUpdate(vo);
		if(bCheck==true) {
			data = "<script>location.href=\"video/video_detail.do?no="+vo.getBno()+"\";</script>";
		} else {
			data = "<script>alert(\"비밀번호가 틀립니다!!\");"
					  +"history.back();</script>";
		}
		return data;
	}
	
	@RequestMapping("videoreplydelete_ok.do")
	public String replydelete_ok(VideoReplyVO vo, int no, String pwd) {
		String data = "";
		boolean bCheck = dao.videoreplyDelete(no, pwd);
		if(bCheck==true) {
			data = "<script>location.href=\"video/video_detail.do?no="+vo.getBno()+"\";</script>";
		} else {
			data = "<script>alert(\"비밀번호가 틀립니다!!\");"
					  +"history.back();</script>";
		}
		return data;
	}

}
