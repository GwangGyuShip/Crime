<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>진실의 방</title>
<!-- 부트스트랩 기본 CSS 연결 -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- 퍼오기 CSS -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<!-- 버튼 UI  -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- 전체 크기  -->
<style type="text/css">
.row {
	margin: 0px auto;
	width: 900px;
}

.goo {
	margin-right: 10px;
	width: 100px;
	border-radius: 2px;
	margin-top: 10px;
}
.group{
	margin-right: 10px;
	width: 100px;
	border-radius: 2px;
	margin-top: 10px;
}

/* 박스간의 간격 */
#goobox {
	margin-bottom: 10px;
}
/* 1번째 줄  바꿈 */
#gooOneLine {
	margin-bottom: 10px;
}

/* 2번재 줄바꿈*/
#gooTwoLine {
	margin-bottom: 10px;
}

#menu {
	text-align: left;
}
/* 검색창 옆에 선택 검색 */
#freesearch {
	width: 150px;
	height: 27px;
	font-family: inherit;
	-moz-appearance: none;
	appearance: none;
	border: 1px solid #999;
	border-radius: 0px;
}
/* 새글 쓰기 버튼*/
.inbtn{
	float:right;
}
/* 전체 페이지 */
.page-wrapper {
	margin-left: 120px;
}
</style>
<script type="text/javascript">
 	$(function(){
 		$('.goo').click(function(){
 			var board_area=$(this).text().trim();
 			alert(board_area);
 			$.ajax({ /* 오른쪽 테이블에 상세내용 보여주기*/
				type:"POST",
				url:"area_select.do",
				data:{"board_area":board_area},
				success:function(res)
				{
					$('.board_wrapper').html(res);
				}
			});
 		});
 	});
</script>

<script type="text/javascript">
 	$(function(){
 		$('.group').click(function(){
 			var board_group=$(this).text().trim();
 			
 			$.ajax({ /* 오른쪽 테이블에 상세내용 보여주기*/
				type:"POST",
				url:"group_select.do",
				data:{"board_group":board_group},
				success:function(res)
				{
					$('.board_wrapper').html(res);
				}
			});
 		});
 	});
</script>

</head>

<body>

	
	<div class="page-wrapper">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<!-- 진실의 방 로고 -->
					<center id="menu">
						<img src="image/free_board.png" width=300px height=100px>
					</center>

					<!-- 구 선택 타이틀 -->
					<table>
						<h2 class="text-left">동네</h2>
					</table>


					<!-- 체크박스(구) 가 들어갈 공간 -->
					<div class="container" id="goobox">
						<!-- 1번째 Line -->
						<div class="btn-group2" data-toggle="buttons">

							<label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 종로구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 중구구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 용산구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 성동구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 광진구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 동대문구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 중랑구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 성북구
							</label> <br> <label class="goo btn btn-success"> <input
								type="radio" autocomplete="off"> 강북구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 도봉구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 노원구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 은평구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 서대문구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 마포구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 양천구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 강서구
							</label> <br> <label class="goo btn btn-success"> <input
								type="radio" autocomplete="off"> 구로구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 금천구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 영등포구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 동작구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 관악구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 서초구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 강남구
							</label> <label class="goo btn btn-success"> <input type="radio"
								autocomplete="off"> 송파구
							</label> <br> <label class="goo btn btn-success"> <input
								type="radio" autocomplete="off"> 강동구
							</label>

						</div>

					</div>




					<!-- 분류 들어가는 곳 -->
					<table>
						<h2 class="text-left">분류</h2>
					</table>

					<!-- 분류 들어가는 곳 -->
					<div class="container" id="goobox">
						<div class="btn-group" data-toggle="buttons">

							<label class="group btn btn-success"> <input type="radio"
								autocomplete="off"> HELP!
							</label> <label class="group btn btn-success"> <input type="radio"
								autocomplete="off"> 자유
							</label> <label class="group btn btn-success"> <input type="radio"
								autocomplete="off"> 추천
							</label> <label class="group btn btn-success"> <input type="radio"
								autocomplete="off"> 문의
							</label>



						</div>
					</div>
					<div class="board_wrapper">
					<!-- 게시판 테이블 -->
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
				</div>

				</div>
			</div>
		</div>
	</div>
</body>
</html>