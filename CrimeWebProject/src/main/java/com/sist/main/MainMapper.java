package com.sist.main;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.crimerate.CrimeRateVO;
import com.sist.freeboard.BoardVO;
import com.sist.photo.PhotoVO;
import com.sist.video.VideoVO;

public interface MainMapper {
	@Select("SELECT board_no, board_name, board_subject, board_regdate, board_area "
			+"FROM (SELECT board_no, board_name, board_subject, board_regdate, board_area "
			+"FROM free_board "
			+"ORDER BY board_no DESC) "
			+"WHERE rownum BETWEEN 1 AND 5")
	public List<BoardVO> mainBoardList();
	
	@Select("SELECT sortname, title, regdate, youtubekey "
	+ "FROM(SELECT sortname, title, regdate, youtubekey "
	+ "FROM bvideo "
	+ "WHERE sortname = #{sortname} "
	+ "ORDER BY regdate DESC) "
	+ "WHERE rownum = 1")
	public VideoVO mainVideoList(String sortname);
	
	@Select("SELECT sortname "
			+ "FROM bvideo "
			+ "GROUP BY sortname")
	public List<String> mainVideoSort();
	
	/*@Select()
	public List<PhotoVO> mainPhotoList();*/
	
	@Select("SELECT c_name, c_year, SUM(c_count) AS c_count "
			+"FROM crimerate "
			+"WHERE c_type = '발생' "
			+"GROUP bY (c_year, c_name) "
			+"ORDER BY c_name, c_year")
	public List<CrimeRateVO> mainCrimeList();
}
