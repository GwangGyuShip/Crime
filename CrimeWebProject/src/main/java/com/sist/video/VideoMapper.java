package com.sist.video;

import java.util.*;

import org.apache.ibatis.annotations.Select;

public interface VideoMapper {
	//�������� ������
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,rownum as num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit "
			+ "FROM bvideo ORDER BY regdate DESC)) "
			+ "WHERE num BETWEEN #{start} AND #{end}")
	public List<VideoVO> videoListData(Map map);
	
	//�� ������ ���ϱ�
	@Select("SELECT CEIL(COUNT(*)/10) FROM bvideo")
	public int videoTotalPage();

}
