<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.css'>
<style type="text/css">
.content_list {
	background-color: white;
	border: 1px solid #dcdce6;
	border-radius: 4px;
	margin: 10px;
	padding: 20px;
	color: #4f525b;
}

.content_list .btn {
	color: white;
	background-color: #2961d3;
}

.content_list > h3 {
	margin: 0px;
	margin-bottom: 10px;
}

.content_news {
	background-color: #2961d3;
	color: white;
	cursor: pointer;
}

.content_news:hover {
	background-color: white;
	color: #4f525b;
}

.ch {
	width: 96.5%;
}

.cl1 {
	width: 32.5%;
}

.cl2 {
	width: 62.5%;
}

.cl3 {
	width: 47.5%;
}

.content_news_c {
	/* padding: 5px; */
	border: 1px solid #dcdce6;
	cursor: pointer;
}

.content_news_c:hover {
	text-decoration: underline;
}

@media screen and (max-width: 1050px) {
	.content_list, .ch{
		width: 90%;
	}
}

.chart {
	width: 100%;
	height: 400px;
}

</style>
</head>
<body>
	<center>
	<table>
	<tr>
		<td colspan="2"> 
		<!-- <div class="content_list cl2 text-left">
			<h3>그래프</h3><br>
			<div id="linechart_material" style="width: 900px; height: 500px"></div>
		</div> -->
		<div class="content_list text-left">
				<h3>동영상</h3><br>
			<table class="table">
				<tr style="background-color: #2961d3; color: white;">
				<c:forEach var="vo" items="${mVideo}" varStatus="i">
						<td width="20%">${vo.sortname}</td>
				</c:forEach>
				</tr>
				
				<tr>
				<c:forEach var="vo" items="${mVideo}" varStatus="i">
						<td width="20%">${vo.title}</td>
				</c:forEach>
				</tr>
				
				<tr>
				<c:forEach var="vo" items="${mVideo}" varStatus="i">
						<td width="20%"><iframe width="100%" src="https://www.youtube.com/embed/${vo.youtubekey}?rel=0&amp;controls=0&amp;showinfo=0" 
							frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
						</td>
				</c:forEach>
				</tr>
				
				<tr>
					<td colspan="5" class="text-right">
						<a href="video.do" class="btn btn-sm">더보기</a>
					</td>
				</tr>
			</table>
		</div>
		</td>
		</tr>
		<!-- <div class="content_list cl1 text-left" >
			<h3>지도</h3><br>
		</div> -->

	<tr>
	<td colspan="2" height="800px;">
		<div class="content_list text-left">
			<h3>뉴스</h3><br>
			<%-- <c:forEach var="vo" items="${mNews}" varStatus="i">
				<input value="${vo.title}a" type="button" class="btn btn-sm content_news" data-toggle="collapse" data-target="#content_news_${i.count}">
				<div id="content_news_${i.count}" class="collapse content_news_c" onclick="location.href='${vo.link}'">
					<table class="table">
						<tr>
							<td width="100%">${vo.author}</td>
						</tr>
						<tr>
							<td width="100%">${vo.description}</td>
						</tr>
					</table>
				</div><br><br>
			</c:forEach> --%>
			<table class="table">
				<c:forEach var="vo" items="${mNews}" varStatus="i">
					<tr class="content_news" data-toggle="collapse" data-target="#content_news_${i.count}">
						<th class="text-left">${vo.title}</th>
						<th class="text-right">${vo.author}</th>
					</tr>
					
					<tr id="content_news_${i.count}" class="collapse content_news_c" onclick="location.href='${vo.link}'">
						<td colspan="2" style="padding: 15px;">${vo.description}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		</td>
		
		<!-- <td colspan="1" height="400px;">		
			<div class="content_list text-left">
						<svg class="chart"></svg>
			</div>
		</td> -->
		</tr>

		<tr>
		<td colspan="1" height="400px;">
		<div class="content_list text-left">
			<h3>갤러리</h3><br>
			<table class="table">
				<tr style="background-color: #2961d3; color: white;">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				
				<c:forEach var="i" begin="1" end="5">
					<tr>
						<td>${i}</td>
						<td>테스트</td>
						<td>테스트</td>
						<td>테스트</td>
						<td>테스트</td>
					</tr>
				</c:forEach>
				
				<tr>
					<td colspan="5" class="text-right">
						<a href="photolist.do" class="btn btn-sm">더보기</a>
					</td>
				</tr>
			</table>
		</div>
		</td>
		
		<td colspan="1" height="400px;">
		<div class="content_list text-left">
			<h3>진실의 방</h3><br>
			<table class="table">
			
				<tr style="background-color: #2961d3; color: white;">
					<th width="15%" class="text-center">번호</th>
					<th width="15%" class="text-center">지역</th>
					<th width="30%" class="text-center">제목</th>
					<th width="15%" class="text-center">작성자</th>
					<th width="25%" class="text-center">작성일</th>
				</tr>
				
				<c:forEach var="vo" items="${mBoard}">
					<tr>
						<td width="15%">${vo.board_no}</td>
						<td width="15%">${vo.board_area}</td>
						<td width="30%">${vo.board_subject}</td>
						<td width="15%">${vo.board_name}</td>
						<td width="25%">${vo.board_regdate}</td>
					</tr>
				</c:forEach>
				
				<tr>
					<td colspan="5" class="text-right">
						<a href="boardmain.do" class="btn btn-sm">더보기</a>
					</td>
				</tr>
			</table>
		</div>
		</td>
		
		<td></td>
		
		</tr>
		</table>
	</center>
	
<!-- 	  <script src='http://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.js'></script>
	<script type="text/javascript">
	/* var list = ${mCrime.get(0).getC_year()};
	
	alert(list); */
	var a0 = ${mCrime.get(0).getC_count()};
	var a1 = ${mCrime.get(1).getC_count()};
	var a2 = ${mCrime.get(2).getC_count()};
	var a3 = ${mCrime.get(3).getC_count()};
	var a4 = ${mCrime.get(4).getC_count()};
	var a5 = ${mCrime.get(5).getC_count()};
	var a6 = ${mCrime.get(6).getC_count()};
	var a = ${mCrime.get(0).getC_name()};
	
	var chart = c3.generate({
		  bindto: d3.select('.chart'),
		  data: {
		    columns: [
		      [a, a0, a1, a2, a3, a4, a5, a6]
		    ]
		  }
		});
</script> -->
</body>
</html>