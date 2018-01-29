package com.sist.freeboard;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface FreeBoardMapper {
// 페이징 과 목록띄우는 SQL 구분
@Select("SELECT board_no,board_area,board_group,board_subject,board_name,board_regdate,board_hit,board_filecount,num "+
"FROM(SELECT board_no,board_area,board_group,board_subject,board_name,board_regdate,board_hit,board_filecount,rownum as num "
+"FROM(SELECT board_no,board_area,board_group,board_subject,board_name,board_regdate,board_hit,board_filecount "
+"FROM free_board ORDER BY board_no DESC)) "
+"WHERE num BETWEEN #{start} AND #{end}")
public List<BoardVO> boardListData(Map map);
//삭제하기위핸 부분
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

@Select("SELECT CEIL(COUNT(*)/10) FROM free_board")
public int boardTotalPage();

@Update("UPDATE free_board SET board_group=#{board_group},board_area=#{board_area},board_name=#{board_name},"
		+ "board_subject=#{board_subject},board_content=#{board_content} WHERE board_no=#{board_no}")
public void freeBoardUpdate(BoardVO vo);		
}



