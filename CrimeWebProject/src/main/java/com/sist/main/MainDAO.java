package com.sist.main;

import java.net.URL;
import java.net.URLEncoder;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.freeboard.BoardVO;
import com.sist.news.NewsVO;
import com.sist.newsManager.Item;
import com.sist.newsManager.Rss;
import com.sist.video.VideoVO;

@Repository
public class MainDAO {
	@Autowired
	private MainMapper mapper;
	private Connection conn;
	private CallableStatement cs;
	@Resource(name = "ds")
	private BasicDataSource ds;

	public MainDAO() {
		try {
			Class.forName(ds.getDriverClassName());
		} catch (Exception ex) {
//			ex.printStackTrace();
//			System.out.println("MainDAO : " + ex.getMessage());
		}
	}

	public void getConnection() {
		try {
			conn = DriverManager.getConnection(ds.getUrl(), ds.getUsername(), ds.getPassword());
		} catch (Exception ex) {
			System.out.println("main getConnection" + ex.getMessage());
		}
	}

	public void disConnection() {
		try {
			if (cs != null)
				cs.close();
			if (conn != null)
				conn.close();
		} catch (Exception ex) {
			System.out.println("main disConnection" + ex.getMessage());
		}
	}
	
	public List<BoardVO> mainBoardList() {
		return mapper.mainBoardList();
	}

	public List<NewsVO> newsSearch() {
		List<NewsVO> list = new ArrayList<NewsVO>();

		try {
			String strUrl = "http://newssearch.naver.com/search.naver?where=rss&query="
					+ URLEncoder.encode("범죄율", "UTF-8");
			URL url = new URL(strUrl);
			JAXBContext jc = JAXBContext.newInstance(Rss.class);
			Unmarshaller un = jc.createUnmarshaller();
			Rss rss = (Rss) un.unmarshal(url);
			List<Item> iList = rss.getChannel().getItem();

			int count = 0;
			for(Item i : iList) {
				NewsVO vo = new NewsVO();
				String strTitle= i.getTitle();
				if (strTitle.length() >= 30)
					strTitle = strTitle.substring(0, 30) + "...";
				vo.setTitle(strTitle);
				vo.setLink(i.getLink());
				vo.setAuthor(i.getAuthor());
				vo.setDescription(i.getDescription());
				
				list.add(vo);
				
				count++;
				if (count >= 10)
					break;
			}
		} catch (Exception ex) {
			System.out.println("NewsMgr : " + ex.getMessage());
		}

		return list;
	}
	
	public List<String> mainVideoSort() {
		return mapper.mainVideoSort();
	}
	
	public VideoVO mainVideoList(String sortname) {
		VideoVO vo = mapper.mainVideoList(sortname);
		
		return vo; 
	};
}