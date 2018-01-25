package com.sist.freeboard;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface FreeBoardMapper {
	//목록가져오기
@Select("SELECT board_no,board_area,board_group,board_subject,board_name,board_regdate,board_hit,board_filecount,num "+
"FROM(SELECT board_no,board_area,board_group,board_subject,board_name,board_regdate,board_hit,board_filecount,rownum as num "
+"FROM(SELECT board_no,board_area,board_group,board_subject,board_name,board_regdate,board_hit,board_filecount "
+"FROM free_board ORDER BY board_no DESC)) "
+"WHERE num BETWEEN #{start} AND #{end}")
public List<BoardVO> boardListData(Map map);
 //내용보기
/*//@Update("UPDATE free_board SET board_hit=board_hit+1 WHERE no=#{no}")
*/

// 삭제하기
@Delete("DELETE FROM free_board WHERE board_no=#{board_no} ")
public void boardDelete(int no);

@Select("SELECT board_pwd FROM free_Board "
		 +"WHERE board_no=#{no}")
 public String freeBoardGetPwd(int no);

@Update("UPDATE free_board SET board_name=#{board_name}"
		+ ",board_subject=#{board_subject}"
		+ ",board_content=#{board_content} "
		+ "WHERE board_no=#{board_no}")
public void boardUpdate(BoardVO vo);
}



