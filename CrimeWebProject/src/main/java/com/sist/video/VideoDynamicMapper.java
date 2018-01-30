package com.sist.video;

import java.util.List;
import java.util.Map;

public class VideoDynamicMapper {
	public String relatedvlistQuery(Map map) {
	
		String keyword1 = (String) map.get("keyword1");
		String keyword2 = (String) map.get("keyword2");
		String keyword3 = (String) map.get("keyword3");
		String keyword4 = (String) map.get("keyword4");
		
		StringBuilder query = new StringBuilder();
		query.append("SELECT no,sortname,title,regdate,youtubekey,length,hit,rownum  "
				+ "FROM (SELECT no,sortname,title,regdate,youtubekey,length,hit "
				+ "FROM bvideo ORDER BY regdate DESC) "
				+ "WHERE (title LIKE '"+keyword1+ "'");
		if (keyword2!=null) { 
			query.append(" OR title LIKE '"+keyword2+"'");
		} if (keyword3!=null) {
			query.append(" OR title LIKE '"+keyword3+"'");
		} if (keyword4!=null) {
			query.append(" OR title LIKE '"+keyword4+"'");
		}
		query.append(") AND rownum<=7");
	   return query.toString();
		
	}

}
