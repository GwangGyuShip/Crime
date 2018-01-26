package com.sist.freeboard;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.annotations.Select;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oracle.jdbc.driver.OracleTypes;

@Repository
public class BoardDAO {
	@Autowired
	private FreeBoardMapper mapper;
	
	private Connection conn;
	private CallableStatement cs;
	@Resource(name="ds")
	private BasicDataSource ds;

	public BoardDAO() {
		try {
			Class.forName(ds.getDriverClassName());
		} catch (Exception ex) {
//			System.out.println("BoardDAO"+ex.getMessage());
		}
	}
	 public void getConnection()
	  {
		  try
		  {
			  conn=DriverManager.getConnection(ds.getUrl(),ds.getUsername(),ds.getPassword());
		  }catch(Exception ex){
			  System.out.println("getConnection"+ex.getMessage());
		  }
	  }
	  public void disConnection()
	  {
		  try
		  {
			  if(cs!=null) cs.close();
			  if(conn!=null) conn.close();
		  }catch(Exception ex){
			  System.out.println("disConnection"+ex.getMessage());
		  }
	  }
	  
	 // 새글 입력하는 부분 입니다/
	  public void boardInsert(BoardVO vo){
		  try{
			  getConnection();
			  String sql="{CALL boardInsert(?,?,?,?,?,?,?,?,?,?)}";
		/*	  System.out.println(vo.getBoard_name());
			  System.out.println(vo.getBoard_subject());
			  System.out.println(vo.getBoard_content());
			  System.out.println(vo.getBoard_pwd());
			  System.out.println(vo.getBoard_group());
			  System.out.println(vo.getBoard_area());
			  System.out.println(vo.getBoard_ip());	 */
			  cs=conn.prepareCall(sql);
			  
			  cs.setString(1, vo.getBoard_name());
			  cs.setString(2, vo.getBoard_subject());
			  cs.setString(3, vo.getBoard_content());
			  cs.setString(4, vo.getBoard_pwd());
			  cs.setString(5, vo.getBoard_group());
			  cs.setString(6, vo.getBoard_area());
			  cs.setString(7, vo.getBoard_ip());
			  cs.setString(8, vo.getFilename());
			  cs.setString(9, vo.getFilesize());
			  cs.setInt(10, vo.getFilecount());
			  cs.executeQuery();
		  }catch(Exception ex){
			  System.out.println("BoardInsert"+ex.getMessage());
		  }finally{
			  disConnection();
		  }
	  }
	  
	  // 내용보여주기 부분입니다.
	  public BoardVO boardContentData(int no){
		  BoardVO vo =new BoardVO();
		  try{
			  getConnection();
			  String sql="{CALL boardContentData(?,?)}";
			  cs=conn.prepareCall(sql);
			  cs.setInt(1, no);
			  cs.registerOutParameter(2, OracleTypes.CURSOR);
			  cs.executeQuery();
			  ResultSet rs=(ResultSet)cs.getObject(2);
			  rs.next();
			  vo.setBoard_no(rs.getInt(1));
			  vo.setBoard_name(rs.getString(2));
			  vo.setBoard_subject(rs.getString(3));
			  vo.setBoard_content(rs.getString(4));
			  vo.setBoard_hit(rs.getInt(5));
			  vo.setBoard_group(rs.getString(6));
			  vo.setBoard_area(rs.getString(7));
			  vo.setBoard_ip(rs.getString(8));
			  vo.setFilename(rs.getString(9));
			  vo.setFilesize(rs.getString(10));
			  vo.setFilecount(rs.getInt(11));
			  vo.setBoard_regdate(rs.getDate(12));
			  rs.close();
		  }catch(Exception ex){
			  System.out.println("boardContentData"+ex.getMessage());
		  }finally{
			  disConnection();
		  }
		  return vo;
	  }
	  public List<BoardVO> boardListData(Map map){
		  return mapper.boardListData(map);
	  }
	  
	  //삭제하는 부분입니다
	  public boolean boardDelete(int no,String pwd){
		  //기본적인 체크 하는부분은 false 로 지정한다
		  boolean bCheck=false;
		  String db_pwd=mapper.freeBoardGetPwd(no);
		  if(db_pwd.equals(pwd)){
			  //비밀번호가 맞다면 체크는 true 로바꿔주고 메퍼 Sql 쪽으로 no 를 넘겨준다.
			  bCheck=true;
			  mapper.boardDelete(no);
		  }else{
			  
		  }
		  return bCheck;
		 
	  }
	  
	  public boolean boardUpdate(BoardVO vo){
		  boolean bCheck=false;
		  String pwd=mapper.freeBoardGetPwd(vo.getBoard_no());
		  if(pwd.equals(vo.getBoard_pwd())){
			  bCheck=true;
			  mapper.boardUpdate(vo);
		  }
		  return bCheck;
	  }
	  public int freeBoardTotalPage(){
		  return mapper.boardTotalPage();
	  }
	  
	  public boolean freeBoardUpDate(BoardVO vo){
		  boolean bCheck=false;
		  String pwd=mapper.freeBoardGetPwd(vo.getBoard_no());
		  if(pwd.equals(vo.getBoard_pwd())){
			  bCheck=true;
			  mapper.boardUpdate(vo);
		  }
		  return bCheck;
	  }
	  public BoardVO boardUpdateData(int no){
		  BoardVO vo =new BoardVO();
		  try{
			  getConnection();
			  String sql="{CALL boardContentData(?,?)}";
			  cs=conn.prepareCall(sql);
			  cs.setInt(1, no);
			  cs.registerOutParameter(2, OracleTypes.CURSOR);
			  cs.executeQuery();
			  ResultSet rs=(ResultSet)cs.getObject(2);
			  rs.next();
			  vo.setBoard_no(rs.getInt(1));
			  vo.setBoard_name(rs.getString(2));
			  vo.setBoard_subject(rs.getString(3));
			  vo.setBoard_content(rs.getString(4));
			  vo.setBoard_hit(rs.getInt(5));
			  vo.setBoard_group(rs.getString(6));
			  vo.setBoard_area(rs.getString(7));
			  vo.setBoard_ip(rs.getString(8));
			  vo.setFilename(rs.getString(9));
			  vo.setFilesize(rs.getString(10));
			  vo.setFilecount(rs.getInt(11));
			  vo.setBoard_regdate(rs.getDate(12));
			  rs.close();
		  }catch(Exception ex){
			  System.out.println("boardContentData"+ex.getMessage());
		  }finally{
			  disConnection();
		  }
		  return vo;
	  }
}
