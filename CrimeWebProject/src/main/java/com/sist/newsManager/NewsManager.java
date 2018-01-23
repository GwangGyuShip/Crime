package com.sist.newsManager;

import java.net.URLEncoder;
import java.util.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Parser;
import org.jsoup.select.Elements;

import com.sist.news.NewsVO;
public class NewsManager {

	public static void main(String[] args) {
		NewsManager nm=new NewsManager();
		nm.newsList();
	}
	
	public List<NewsVO> newsList() {
		List<NewsVO> list= new ArrayList<NewsVO>();
		try{
			Document doc=Jsoup.connect("http://newssearch.naver.com/search.naver?where=rss&query="
					+URLEncoder.encode("นüมห", "UTF-8")).get();
			
			Elements title=doc.select("channel item title");
			Elements link=doc.select("channel item link");
			Elements description=doc.select("channel item description");
			Elements pubDate=doc.select("channel item pubDate");
			Elements author=doc.select("channel item author");
			//Elements thumbnail=doc.select("channel item media:thumbnail");
			
			for(int i=0;i<100;i++){
				Element t=title.get(i);
				Element l=link.get(i);
				Element d=description.get(i);
				Element pd=pubDate.get(i);
				Element a=author.get(i);
				//Element th=thumbnail.get(i);
				
				System.out.println(i+" "+t.text()+" "+l.text()+" "+d.text()+" "+pd.text()
								+" "+a.text()+" ");
			}
									
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
		return list;
	}
	
}
