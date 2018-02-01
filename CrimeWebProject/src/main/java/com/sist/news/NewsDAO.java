package com.sist.news;

import java.io.FileWriter;
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
			db=mc.getDB("mydb");
			dbc=db.getCollection("newsProject");
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	public List<NewsVO> newsListData(){
		List<NewsVO> list=new ArrayList<NewsVO>();
		try{
			
			DBCursor cursor=dbc.find().limit(10);
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
	
	public void newsCreatDataFile(){
		List<NewsVO> list=new ArrayList<NewsVO>();
		try{
			
			DBCursor cursor=dbc.find();
			
			String data="";
			while(cursor.hasNext()){
				BasicDBObject obj=(BasicDBObject)cursor.next();
				NewsVO vo=new NewsVO();
				vo.setTitle(obj.getString("title"));
				vo.setDescription(obj.getString("description"));
				list.add(vo);
				
				data+=vo.getTitle()+"\n"+vo.getDescription()+"\n";
			}
			cursor.close();
			
			FileWriter fw=new FileWriter("/home/sist/movie_data/news.txt");
			fw.write(data);
			fw.close();
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
	}
	
	public List<NewsVO> newsCrimeListData(int page){
		List<NewsVO> list=new ArrayList<NewsVO>();
		try{
			int skip=(page*8)-8;
			DBCursor cursor=dbc.find().skip(skip).limit(8);
			while(cursor.hasNext()){
				BasicDBObject obj=(BasicDBObject)cursor.next();
				NewsVO vo=new NewsVO();
				vo.setNo(obj.getInt("no"));
				vo.setTitle(obj.getString("title"));
				vo.setLink(obj.getString("link"));
				vo.setDescription(obj.getString("description"));
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
	
	public void newsInsert(NewsVO vo) {
		try{
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
			insertObj.put("link", vo.getLink());
			insertObj.put("pubDate", vo.getPubDate());
			insertObj.put("author", vo.getAuthor());
			dbc.insert(insertObj);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
	}
	
	public void newsCrimeInsert(NewsVO vo) {
		try{
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
			insertObj.put("link", vo.getLink());
			insertObj.put("description", vo.getDescription());
			insertObj.put("pubDate", vo.getPubDate());
			insertObj.put("author", vo.getAuthor());
			dbc.insert(insertObj);
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		
	}
	
	public void newsDrop() {
		try{
			dbc.drop();
			dbc=db.getCollection("newsProject");
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
}