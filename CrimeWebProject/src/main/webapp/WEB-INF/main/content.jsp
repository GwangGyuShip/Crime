<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.content_list {
	background-color: white;
	border: 1px solid #dcdce6;
	border-radius: 4px;
	display: inline-block;
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

.cl1 {
	width: 32.5%;
}

.cl2 {
	width: 62.5%;
}

.cl3 {
	width: 47.5%;
}

input {
	width: 100%;
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
	.content_list {
		width: 90%;
	}
}

</style>
</head>
<body>
	<center>
		<div class="content_list cl2 text-left">
			<h3>그래프</h3><br>
		</div>
		<div class="content_list cl1 text-left" >
			<h3>지도</h3><br>
		</div>
		<br>

		<div class="content_list cl1 text-left">
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
				<tr style="background-color: #2961d3; color: white;">
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
				</tr>
				
				<c:forEach var="i" begin="1" end="5">
					<tr>
						<td>${i}</td>
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
		<div class="content_list cl2 text-left">
			<h3>동영상</h3><br>
			<table class="table">
				<tr style="background-color: #2961d3; color: white;">
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
				</tr>
				
				<c:forEach var="i" begin="1" end="5">
					<tr>
						<td>${i}</td>
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
		<br>

		<div class="content_list cl3 text-left">
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
		<div class="content_list cl3 text-left">
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
		<br>
	</center>
</body>
</html>