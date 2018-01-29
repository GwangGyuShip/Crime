package com.sist.video;

import java.util.*;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

import com.sist.video.*;

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
	
	//조회수 증가
	@Update("UPDATE bvideo SET hit=hit+1 WHERE no=#{no}")
	public void videoHitIncrement(int no);
	
	//내용보기
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit FROM bvideo WHERE no=#{no}")
	public VideoVO videoContentData(int no);
	
	//TOP7
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,rownum as num "
			+ "FROM (SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit "
			+ "FROM bvideo ORDER BY hit DESC)) "
			+ "WHERE num<=7")
	public List<VideoVO> videoTop7ListData(Map map);
	
	//댓글 BEST 7
	@Select("SELECT no,sortno,sortname,title,regdate,youtubekey,content,length,hit,tc "
			+ "FROM bvideo b,(SELECT bno,COUNT(*) AS tc FROM BVIDEOREPLY GROUP BY bno ORDER BY tc DESC) br "
			+ "WHERE b.no=br.bno "
			+ "ORDER BY br.tc DESC")
	public List<VideoVO> videoreplybest(Map map);
	
	//댓글 추가
	@SelectKey(keyProperty="no", resultType=int.class, before=true, statement="SELECT NVL(MAX(no)+1,1) as no FROM bvideoreply")
	@Insert("INSERT INTO bvideoreply VALUES(#{no},#{bno},#{name},#{msg},SYSDATE,#{pwd})")
	public void videoreplyInsert(VideoReplyVO vo);
	
	//댓글 목록 출력
	@Select("SELECT no,bno,name,msg,regdate FROM bvideoreply WHERE bno=#{no} ORDER BY regdate DESC")
	public List<VideoReplyVO> videoreplyListData(int no);
	
	//댓글 하나 가져오기
	@Select("SELECT no,bno,name,msg,regdate FROM bvideoreply WHERE no=#{no}")
	public VideoReplyVO replyContentData(int no);
	
	//댓글 수정, 삭제할때 비번받기
	@Select("SELECT pwd FROM bvideoreply WHERE no=#{no}")
	public String videoGetPwd(int no);
	
	//댓글 수정
	@Update("UPDATE bvideoreply SET msg=#{msg} WHERE no=#{no}")
	public void videoreplyUpdate(VideoReplyVO vo);
	
	//댓글 삭제
	@Delete("DELETE FROM bvideoreply WHERE no=#{no}")
	public void videoreplyDelete(int no);
	
	//댓글 수 조회
	@Select("SELECT COUNT(*) FROM bvideoreply WHERE bno=#{bno}")
	public int videoreplyCount(int bno);
	
	//관련동영상 조회
	/*@Select("SELECT no,sortname,title,regdate,youtubekey,length,hit "
			+ "FROM (SELECT no,sortname,title,regdate,youtubekey,length,hit "
			+ "FROM bvideo ORDER BY regdate DESC) "
			+ "WHERE (title LIKE '%#{keyword1}%' OR title LIKE '%#{keyword2}%' OR title LIKE '%#{keyword3}%' OR title LIKE '%#{keyword4}%') AND rownum<=7")*/
	
	@Select("<script>SELECT no,sortname,title,regdate,youtubekey,length,hit "
			+ "FROM (SELECT no,sortname,title,regdate,youtubekey,length,hit "
			+ "FROM bvideo ORDER BY regdate DESC) "
			+ "WHERE (title LIKE '%#{keyword1}%' "
			+ "<choose>"
			+ "<when test=\"keyword2!=null\"> OR title LIKE '%#{keyword2}%' </when> "
			+ "<when test=\"keyword3!=null\"> OR title LIKE '%#{keyword3}%' </when> "
			+ "<when test=\"keyword4!=null\"> OR title LIKE '%#{keyword4}%' </when> "
			+ "</choose> "
			+ ") AND rownum<=7</script>")
	public List<VideoVO> relatedvlist(String keyword1, String keyword2, String keyword3, String keyword4 );
	

}





















