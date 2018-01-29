package com.sist.video;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.video.*;

import java.util.*;

@Repository
public class VideoDAO {
	@Autowired
	private VideoMapper vm;
	
	public List<VideoVO> videoListData(Map map) {
		return vm.videoListData(map);
	}
	
	public int videoTotalPage() {
		return vm.videoTotalPage();
	}
	
	public VideoVO videoContentData(int no) {
		vm.videoHitIncrement(no);
		return vm.videoContentData(no);
	}
	
	public List<VideoVO> videoTop7ListData(Map map) {
		return vm.videoTop7ListData(map);
	}
	
	public List<VideoVO> videoreplybest(Map map) {
		return vm.videoreplybest(map);
	}
	
	public void videoreplyInsert(VideoReplyVO vo) {
		vm.videoreplyInsert(vo);
	}
	
	public List<VideoReplyVO> videoreplyListData(int no) {
		return vm.videoreplyListData(no);
	}
	
	public VideoReplyVO videoreplyUpdateData(int no) {
		return vm.replyContentData(no);
	}
	
	public boolean videoreplyUpdate(VideoReplyVO vo) {
		boolean bCheck = false;
		String pwd = vm.videoGetPwd(vo.getNo());
		if(pwd.equals(vo.getPwd())) {
			bCheck = true;
			vm.videoreplyUpdate(vo);
		}
		return bCheck;
	}
	
	public boolean videoreplyDelete(int no, String pwd) {
		boolean bCheck = false;
		String db_pwd = vm.videoGetPwd(no);
		if(db_pwd.equals(pwd)) {
			bCheck = true;
			vm.videoreplyDelete(no);
		}
		return bCheck;
	}
	
	public int videoreplyCount(int bno) {
		return vm.videoreplyCount(bno);
	}
	
	

}
