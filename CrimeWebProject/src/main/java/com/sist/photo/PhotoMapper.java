package com.sist.photo;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.apache.ibatis.annotations.Update;

public interface PhotoMapper {
	@Select("SELECT gu FROM kang WHERE hankang=#{hankang}")
	public List<AddressVO> kangcheck(String hankang);

	@SelectKey(keyProperty = "no", resultType = int.class, before = true, statement = "SELECT NVL(MAX(no)+1,1) AS no FROM photoboard")
	@Insert("INSERT INTO photoboard VALUES(#{no},#{gu},#{pwd},SYSDATE,#{subject},#{content},#{filename},#{filecount},0,#{addr})")
	public void PhotoInsert(PhotoVO vo);

	@Select("SELECT NVL(MAX(no)+1,1) AS no FROM photoboard")
	public int nocheck();
	
	/*
	 * SELECT b_no, b_subject, m_nick, b_regdate, b_grade, b_hit, num
		FROM (SELECT b_no, b_subject, m_nick,b_regdate, b_grade, b_hit, rownum as num 
		FROM (SELECT b.b_no, b.b_subject, m.m_nick, b.b_regdate, b.b_grade, b.b_hit
		FROM board b, member m WHERE b_grade=#{grade} AND b.m_email=m.m_email ORDER BY b.b_no DESC)) 
		WHERE num BETWEEN #{start} AND #{end}
	 */
	@Select("SELECT no,gu,pwd,regdate,subject,content,filename,filecount,good,addr, num"
			+ "	FROM (SELECT no,gu,pwd,regdate,subject,content,filename,filecount,good,addr, rownum as num"
			+ "	FROM (SELECT no,gu,pwd,regdate,subject,content,filename,filecount,good,addr"
			+ "	FROM photoboard WHERE gu=#{gu} order By no desc))"
			+ "	WHERE num BETWEEN #{start} AND #{end}")
	public List<PhotoVO> p_ContentList(Map map);
	
	@Select("SELECT CEIL(COUNT(*)/6) FROM photoboard WHERE gu=#{gu}")
	public int photoTotalPage(String gu);
	@Select("SELECT * FROM photoboard WHERE no=#{no}")
	public PhotoVO p_content(int no);
	
	@Update("update photoboard set good=good+1 where no=#{no}")
	public void goodup(int no);
}