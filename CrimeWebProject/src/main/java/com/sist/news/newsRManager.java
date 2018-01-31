package com.sist.news;

import org.rosuda.REngine.Rserve.RConnection;
import org.springframework.stereotype.Component;

@Component
public class newsRManager {
	// /home/sist/bigdataDev/bigdataStudy/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SpringBigDataAOPProject/movie
	
	public void crimeGraph() {
		try{
			RConnection rc=new RConnection();
			rc.voidEval("data<-read.table(\"/home/sist/movie_data/news.txt\")");
			rc.voidEval("png(\"/home/sist/bigdataDev/bigdataStudy/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/CrimeWebProject/news/newsG1.png\",width=300,height=250)");
			rc.voidEval("barplot(data$like,names.arg=data$title,col=rainbow(7))");
			rc.voidEval("dev.off()");
			rc.close();
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	public void feelPrint(){
		try{
			RConnection rc=new RConnection();
			// csv 파일, 일반텍스트 table, need
			rc.voidEval("data<-read.table(\"/home/sist/movie_data/result\")");
			rc.voidEval("png(\"/home/sist/bigdataDev/bigdataStudy/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/CrimeWebProject/news/newsG1.png\",width=300,height=250)");
			rc.voidEval("pie(data$V2,labels=data$V1,col=rainbow(15))");
			rc.voidEval("dev.off()");
			rc.close();
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
}
