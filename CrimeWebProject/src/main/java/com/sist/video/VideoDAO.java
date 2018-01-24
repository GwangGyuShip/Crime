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

}
