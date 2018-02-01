<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
					<table class="table table-hover" width=700>

						<tr class="info">
							<th class="text-center" width=7%>번호</th>
							<th class="text-center" width=10%>분류</th>
							<th class="text-center" width=10%>지역</th>
							<th class="text-left" width=30%>제목</th>
							<th class="text-center" width=15%>글쓴이</th>
							<th class="text-center" width=20%>작성일</th>
							<th class="text-center" width=10%>조회수</th>
						</tr>
						<!-- DB에 저장된 게시글  -->
						<c:set var="color" value="default" />
						<c:forEach var="vo" items="${list }" varStatus="s">

							<tr class="${color }">
								<td class="text-center" width=7%>${vo.board_no }</td>
								<td class="text-center" width=5%>${vo.board_group }</td>
								<td class="text-center" width=5%>${vo.board_area }</td>
								<td class="text-left" width=30%><a
									href="bcontent.do?no=${vo.board_no }">${vo.board_subject }</a></td>
								<td class="text-center" width=15%>${vo.board_name }</td>
								<td class="text-center" width=20%><fmt:formatDate
										value="${vo.board_regdate }" pattern="yyyy-MM-dd" /></td>
								<td class="text-center" width=10%>${vo.board_hit }</td>
							</tr>

						</c:forEach>

					</table>

					<!-- 페이징, 새글 남기기  게시판 내용 보이는 곳-->
					<table class="table table-hover" width=700>

						<tr>
							<td class="text-right"><a
								href="boardmain.do?page=${curpage>1?curpage-1:curpage }"
								class="btn btn-sm btn-primary">이전</a> <a
								href="boardmain.do?page=${curpage<totalpage?curpage+1:curpage }"
								class="btn btn-sm btn-primary">다음</a> &nbsp;&nbsp;${curpage }
								page / ${totalpage } pages</td>
						</tr>

						<!-- 검색창 카테고리 선택 부분 -->
						<form action="freesearch.do" method="post">
						<select name="freesearch">
							<option value="f1">글쓴이</option>
							<option value="f2">제목</option>
							<option value="f3">내용</option>
						</select>
						<!-- 검색 텍스트 필드와 검색 버튼 부분 -->
						<input type="text" szie=10 name="search">
						
						<button>검색</button>
						</form>
						<!-- 새글 쓰기 부분 -->
						<a href="insert.do" class="inbtn btn-sm btn-primary" >새글</a>
					</table>
</body>
</html>