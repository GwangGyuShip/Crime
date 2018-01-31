<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script src= "https://cdn.zingchart.com/zingchart.min.js"></script>


<script type="text/javascript">
	$(function() {
		/* var i=0;
		if(i==0){
			$('.newsContainer').click(function(){
				
				$(this).animate({ height: "900px" }, 500);	
			});	
			i=1;
		}else{
			$('.newsContainer').click(function(){
				
				$(this).animate({ height: "270px"}, 500);	

			});	
			i=0;
		}
		 */
		/* $(".nc").on("click", function(){
			$(this).animate({ height: "1000px"}, 500);
			
		}); */

		$('.searchBtn1').click(function() {

			$(this).toggleClass("searchBtn2");

		});
		$('.searchBtn2').click(function() {

			$(this).toggleClass("searchBtn1");
		});

		
	
	
	
	});
</script>
<style type="text/css">
.searchBtn1 {
	background-color: #0078FF;
	border-radius: 10px;
	width: 100px;
	height: 50px;
	color: #dcdcdc;
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	vertical-align: center;
	margin: 30px 0 10px 0;
	/* float: left; */
}

.searchBtn1:hover {
	opacity: 0.8;
	cursor: pointer;
}

.searchBtn1:visited {
	background-color: black;
}

.searchBtn2 {
	background-color: black;
	border-radius: 10px;
	width: 100px;
	height: 50px;
	color: #dcdcdc;
	font-size: 30px;
	font-weight: bold;
	text-align: center;
	vertical-align: center;
	margin: 30px 0 10px 0;
}

.searchBtn2:hover {
	opacity: 0.8;
	cursor: pointer;
}

.searchBtn2:visited {
	background-color: black;
}

.floating-menu {
	/* position: fixed;  */
	right: 0px;
	top: 7.2%;
	z-index: 100;
	width: 1050px;
	height: 80px;
	margin: 0 0 0 15px;
	/*  float: left; */
}

/* .newsContainer {
	background-color: #FFF0F5;
	width: 98%;
	height: 270px;
	border-radius: 10px;
	margin: 10px 0 0 10px;
	overflow: hidden;
	height: auto;
	"
}

.newsContainer:hover {
	cursor: pointer;
} */

.newsPic {
	width: 23%;
	height: 200px;
	vertical-align: center;
	background-color: green;
	margin: 0 0 0 35px;
	top: 100px;
	float: left;
	border: 1px solid black;
	"
}

.newsContent {
	width: 68%;
	height: 150px;
	vertical-align: center;
	float: left;
	border: 1px solid black;
	margin-left: 20px;
	"
}


 .Graph1 {
	/* position: fixed; */
	margin: 0 0 30px 0;
	width: 45%;
	height: 350px;
	background-color: blue;
	float: left;
} 

.Graph2 {
	/* position: fixed; */
	margin: 0 0 30px 0;
	width: 45%;
	height: 350px;
	background-color: red;
	float: left;
}


</style>
</head>
<body>
<%-- <%= application.getRealPath("/news") %> --%>
	<div class="header">
		<div>
			<img src="images/news_head.png"
				style="width: 50px; height: auto; margin: 30px 15px 0 15px; float: left;">
		</div>
		<div style="margin: 25px 0 0 0; float: left;">
			<strong style="font-size: 45px; font-weight: bold;">뉴스</strong>
		</div>

		<div style="height: 100px;"></div>


	</div>
	<div id="contents">
		<div></div>

		<table class="table" >
			<td width="5%">
				<div style="height: 60px;"></div> 
				 <a href="news.do">
				 <div class="searchBtn1" " >전체	</div> 
					</a>
				<a href="muderNews.do">
				<div class="searchBtn1" id="murder">
					살인 <input type="hidden" name="murder" value="살인경찰">
				</div>
				</a>
				<a href="violenceNews.do">
				<div class="searchBtn1" id="violence">
					폭행 <input type="hidden" name="violence" value="폭행경찰">
				</div>
				</a>
				<a href="theftNews.do">
				<div class="searchBtn1" id="theft">
					절도 <input type="hidden" name="theft" value="절도경찰">
				</div>
				</a>
				<a href="sexualCrimeNews.do">
				<div class="searchBtn1" id="sexual">
					성범죄 <input type="hidden" name="sexual" value="성범죄경찰">
				</div>
				</a>
				<a href="arsonNews.do">
				<div class="searchBtn1" id="arson">
					방화 <input type="hidden" name="arson" value="방화경찰">
				</div>
				</a>
				 <!-- <div class="searchBtn1" style="font-size: 22px; padding-top: 5px;">경제사범
						<input type="hidden" name="murder" value="경제범죄경찰">
					</div> -->
				<a href="fraudNews.do">
				<div class="searchBtn1" id="scam">
					사기 <input type="hidden" name="scam" value="사기경찰">
				</div>
				</a>
				<a href="threatNews.do">
				<div class="searchBtn1" id="threat">
					협박 <input type="hidden" name="threat" value="협박경찰">
				</div>
				</a>
			</td>
			<td width="65%">
				<c:forEach	var="vo" items="${list }">
					<!-- <div class="newsContainer"> -->

						<div style="height: 30px;"></div>
						&nbsp;&nbsp;<strong style="font-size: 35px;">${vo.title }</strong>
						<table class="table table-hover">
							<tr>
								<td colspan="2"><h4>[${vo.author }]&nbsp;&nbsp;</h4><h4>${vo.pubDate }</h4></td>
							</tr>
							<tr>
								<td style="font-size: 20px;"> 
									${vo.description }
								</td>
							</tr>
							<tr>
								<td class="text-right">
							<a	href="${vo.link }">기사 자세히 보기▶▶▶</a>
								</td>
							</tr>
						</table>
						<!-- <div class="newsPic" ></div> -->

						
						

					<!-- </div> -->
					<div style="height: 3px"></div>


				</c:forEach></td>

			</tr>
		</table>


<!-- 
		 <div class="Graph1">
			<img alt="" src="newsG1.png">
		</div> 
		<div class="Graph2"></div> -->

		<div style="margin-left: 40%;">
			<ul class="pagination pagination-lg">
				<li style="font-weight: bold; font-size: 30px;"><a
					href="${pageName }.do?data=${data }&page=${curpage>1?curpage-1:curpage}">
						< </span>
				</a></li> &nbsp;&nbsp;
				<c:forEach var="j" begin="1" end="7">
					<li><a href="${pageName }.do?data=${data }&page=${j}">${j }</a></li>
				</c:forEach>
				&nbsp;&nbsp;
				<li style="font-weight: bold; font-size: 30px;"><a
					href="${pageName }.do?data=${data }&page=${curpage<totalpage?curpage+1:curpage}">
						> </span></li>
			</ul>
		</div>
	</div>





</body>
</html>