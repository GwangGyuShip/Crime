<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
			<h3>그래프</h3>
		</div>
		<div class="content_list cl1 text-left" >
			<h3>지도</h3>
		</div>
		<br>

		<div class="content_list cl1 text-left">
			<h3>뉴스</h3>
		</div>
		<div class="content_list cl2 text-left">
			<h3>동영상</h3>
		</div>
		<br>

		<div class="content_list cl3 text-left">
			<h3>갤러리</h3>
			<table class="table">
				<tr style="background-color: #2961d3; color: white;">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<tr>
					<td>테스트</td>
					<td><img src="images/menu_main.png" width="50px"></td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td colspan="5" class="text-right">더보기</td>
				</tr>
			</table>
		</div>
		<div class="content_list cl3 text-left">
			<h3>진실의 방</h3>
			<table class="table">
				<tr style="background-color: #2961d3; color: white;">
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
				<tr>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td colspan="5" class="text-right">더보기</td>
				</tr>
			</table>
		</div>
		<br>
	</center>
</body>
</html>