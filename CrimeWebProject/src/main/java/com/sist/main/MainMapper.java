package com.sist.main;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.sist.freeboard.BoardVO;

public interface MainMapper {
	@Select("SELECT board_no, board_name, board_subject, board_regdate, board_area "
			+"FROM (SELECT board_no, board_name, board_subject, board_regdate, board_area "
			+"FROM free_board "
			+"ORDER BY board_no DESC) "
			+"WHERE rownum BETWEEN 1 AND 5")
	public List<BoardVO> mainBoardList();
}
