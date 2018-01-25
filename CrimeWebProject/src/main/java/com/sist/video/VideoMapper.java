package com.sist.video;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.sist.video.*;

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
	
	//��ȸ�� ����
	@Update("UPDATE bvideo SET hit=hit+1 WHERE no=#{no}")
	public void videoHitIncrement(int no);
	
	//���뺸��
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit FROM bvideo WHERE no=#{no}")
	public VideoVO videoContentData(int no);
	
	//TOP7
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,rownum as num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit "
			+ "FROM bvideo ORDER BY hit DESC)) "
			+ "WHERE num<=7")
	public List<VideoVO> videoTop7ListData(Map map);
	
	//����߰�
	@SelectKey(keyProperty="no", resultType=int.class, before=true, statement="SELECT NVL(MAX(no)+1,1) as no FROM bvideoreply")
	@Insert("INSERT INTO bvideoreply VALUES(#{no},#{bno},#{name},#{msg},SYSDATE,#{pwd})")
	public void videoreplyInsert(VideoReplyVO vo);
	
	//��۸�����
	@Select("SELECT no,bno,name,msg,regdate FROM bvideoreply WHERE bno=#{no} ORDER BY regdate DESC")
	public List<VideoReplyVO> videoreplyListData(int no);
	
	//��� �ϳ�
	@Select("SELECT no,bno,name,msg,regdate FROM bvideoreply WHERE no=#{no}")
	public VideoReplyVO replyContentData(int no);
	
	//��ۼ���,�����Ҷ� ����ޱ�
	@Select("SELECT pwd FROM bvideoreply WHERE no=#{no}")
	public String videoGetPwd(int no);
	
	//��ۼ���
	@Update("UPDATE bvideoreply SET msg=#{msg} WHERE no=#{no}")
	public void videoreplyUpdate(VideoReplyVO vo);
	
	//��ۻ���
	@Delete("DELETE FROM bvideoreply WHERE no=#{no}")
	public void videoreplyDelete(int no);
	

}





















