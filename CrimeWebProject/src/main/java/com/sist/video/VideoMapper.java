package com.sist.video;

import java.util.*;

import org.apache.ibatis.annotations.Select;

public interface VideoMapper {
	//페이지별 목록출력
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,rownum as num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit "
			+ "FROM bvideo ORDER BY regdate DESC)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<VideoVO> videoListData(Map map);
	
	//총 페이지 구하기
	@Select("SELECT CEIL(COUNT(*)/10) FROM bvideo")
	public int videoTotalPage();

}
