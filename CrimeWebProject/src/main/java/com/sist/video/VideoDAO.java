package com.sist.video;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

}
