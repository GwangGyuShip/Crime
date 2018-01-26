package com.sist.news;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.MongoClient;

@Repository
public class NewsDAO {
	private MongoClient mc;
	private DB db;
	private DBCollection dbc;
	public NewsDAO() {
		try{
			mc=new MongoClient("localhost",27017);
			db=mc.getDB("news");
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	public List<NewsVO> newsListData(int page){
		List<NewsVO> list=new ArrayList<NewsVO>();
		try{
			int skip=(page*10)-10;
			DBCursor cursor=dbc.find().skip(skip).limit(10);
			while(cursor.hasNext()){
				BasicDBObject obj=(BasicDBObject)cursor.next();
				NewsVO vo=new NewsVO();
				vo.setTitle(obj.getString("title"));
				vo.setLink(obj.getString("link"));
				vo.setPubDate(obj.getString("pubDate"));
				vo.setAuthor(obj.getString("author"));
				list.add(vo);
			}
			cursor.close();
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return list;
	}
	
	public List<NewsVO> newsCrimeListData(int page){
		List<NewsVO> list=new ArrayList<NewsVO>();
		try{
			int skip=(page*10)-10;
			DBCursor cursor=dbc.find().skip(skip).limit(10);
			while(cursor.hasNext()){
				BasicDBObject obj=(BasicDBObject)cursor.next();
				NewsVO vo=new NewsVO();
				vo.setNo(obj.getInt("no"));
				vo.setTitle(obj.getString("title"));
				vo.setLink(obj.getString("link"));
				vo.setDescription(obj.getString("description"));
				vo.setPubDate(obj.getString("pubDate"));
				vo.setAuthor(obj.getString("author"));
				vo.setThumbnail(obj.getString("thumbnail"));
				list.add(vo);
			}
			cursor.close();
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return list;
	}
	
	public void newsInsert(NewsVO vo) {
		int max=0;
		DBCursor cursor=dbc.find();
		
		while(cursor.hasNext()){
			BasicDBObject obj=(BasicDBObject)cursor.next();
			int no=obj.getInt("no");
			if(max<no)
				max=no;
		}
		cursor.close();
		
		BasicDBObject insertObj=new BasicDBObject();
		insertObj.put("no", max+1);
		insertObj.put("title", vo.getTitle());
		insertObj.put("description", vo.getDescription());
		
		SimpleDateFormat formatDate=new SimpleDateFormat("yyyy-MM-dd hh:mm");
		String Date= formatDate.format(vo.getPubDate());
		insertObj.put("pubDate", Date);
		insertObj.put("link", vo.getLink());
		insertObj.put("author", vo.getAuthor());
		insertObj.put("thumbnail", vo.getThumbnail());
		dbc.insert(insertObj);
	}
	
	public void newsDrop() {
		try{
			dbc.drop();
			dbc=db.getCollection("news");
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
}