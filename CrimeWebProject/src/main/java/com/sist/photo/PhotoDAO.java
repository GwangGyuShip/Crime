package com.sist.photo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;

import java.text.SimpleDateFormat;
import java.util.*;

@Repository
public class PhotoDAO {
	@Autowired
	private PhotoMapper pm;

	public List<AddressVO> kangcheck(String hankang) {
		return pm.kangcheck(hankang);

	}

	public void boardInsert(PhotoVO vo) {
		pm.PhotoInsert(vo);

	}

	public int nocheck() {
		return pm.nocheck();
	}

	public List<PhotoVO> p_ContentList(Map map) {
	/*	System.out.println(map.size());*/
		return pm.p_ContentList(map);
		
	}

	public int photoTotalPage(String gu) {
		return pm.photoTotalPage(gu);
	}
	public PhotoVO p_content(int no) {
		return pm.p_content(no);
	}
	public void goodup(int no){
		pm.goodup(no);
	}
	public List<PhotoVO> rank(String gu){	
		return pm.rank(gu);
	}
	public void p_delete(int no){
		pm.p_delete(no);
	}
	

}