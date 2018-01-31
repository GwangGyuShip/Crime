package com.sist.newsManager;
import java.net.*;
import java.text.SimpleDateFormat;
import java.util.*;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.sist.news.*;

@Component
public class NewsManager {
	@Autowired
	private NewsDAO dao;
	
	public void mainNewsSearch(){
		
		try {
			String strUrl = "http://newssearch.naver.com/search.naver?where=rss&query="
					+ URLEncoder.encode("범죄경찰", "UTF-8");
			URL url = new URL(strUrl);
			JAXBContext jc = JAXBContext.newInstance(Rss.class);
			Unmarshaller un = jc.createUnmarshaller();
			Rss rss = (Rss) un.unmarshal(url);

			dao.newsDrop();

			List<Item> list = rss.getChannel().getItem();
			for (Item i : list) {
				NewsVO vo = new NewsVO();
				vo.setTitle(i.getTitle());
				vo.setLink(i.getLink());
				vo.setPubDate(new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date(i.getPubDate())));
				vo.setAuthor(i.getAuthor());
				dao.newsInsert(vo);
			}

		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}

	}
	
	public void newsCrimeSearch(String data){
		try{
			String strUrl="http://newssearch.naver.com/search.naver?where=rss&query="
								+URLEncoder.encode(data,"UTF-8");
			URL url=new URL(strUrl);
			//ctrl+space 했을 때 앞 아이콘위에 A는 Abstract, F는 final, S는 static
			//Rss는 xml에서 테이블 이름, JAXB는 추상클래스 new를 사용하지 못함
			JAXBContext jc=JAXBContext.newInstance(Rss.class);
			Unmarshaller un=jc.createUnmarshaller();
			Rss rss=(Rss)un.unmarshal(url);
			
			dao.newsDrop();
			
			List<Item> list=rss.getChannel().getItem();
			for(Item i:list){
				NewsVO vo=new NewsVO();
				vo.setTitle(i.getTitle());
				vo.setDescription(i.getDescription());
				vo.setLink(i.getLink());
				vo.setPubDate(new SimpleDateFormat("yyyy-MM-dd hh:mm").format(new Date(i.getPubDate())));
				vo.setAuthor(i.getAuthor());
				dao.newsCrimeInsert(vo);
			}
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
}