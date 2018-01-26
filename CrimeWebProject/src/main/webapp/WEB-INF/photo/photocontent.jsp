<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<style type="text/css">
.row {
	margin: 0px auto;
	width: 800px;
}

.fotorama {
	margin: 0px auto;
}

.photolist {
	width: 230px;
	height: 180px;
	margin-left: 50px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<center>
				<h3>갤로리</h3>
			</center>
			<div data-width="100%" data-height="350px"
				data-transition="crossfade" class="fotorama" data-nav="thumbs"
				data-loop="true" data-autoplay="2000" data-fit="scaledown">
				<!-- 사진 등록한 수 만큼 -->
				<%-- <c:forEach var="i" begin="1" end="${vo.cb_img_cnt }">
					<img src="hot3/cb_img/cb_img_${vo.cb_no }_${i }.jpg">
				</c:forEach> --%>

				<img class="photolist" src="gallery/a3.jpg"> <img class="photolist"
					src="gallery/a2.jpg"> <img class="photolist" src="gallery/a4.jpg">
			</div>
			<table class="table table-hover">

				<tr>
					<td class="text-center info" width="20%">번호</td>
					<td class="text-center" width="30%">${vo.no }</td>
					<td class="text-center info" width="20%">작성일</td>
					<td class="text-center" width="30%"><fmt:formatDate
							value="${vo.regdate }" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr>
					<td class="text-center info" width="20%">이름</td>
					<td class="text-center" width="30%">${vo.name }</td>
					<td class="text-center info" width="20%">조회수</td>
					<td class="text-center" width="30%">${vo.hit }</td>
				</tr>
				<tr>
					<td class="text-center info" width="20%">제목</td>
					<td class="text-left" colspan="3">${vo.subject }</td>
				</tr>
				<tr>

					<td colspan="4" align="left" valign="top" height="100">
						${vo.content }</td>
				</tr>
				<tr>
					<td colspan="4" class="text-right">
						<button class="btn btn-sm btn-info">
							<img src="gallery/good.png"> 공감해요
						</button> <a href="#" class="btn btn-sm btn-info">수정</a> <a href="#"
						class="btn btn-sm btn-danger">삭제</a> <a href="#"
						class="btn btn-sm btn-success">목록</a>
					</td>
				</tr>
			</table>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<table id="table_content" width=700>
				<tr>
					<td align="center">댓글보기</td>
				</tr>
			</table>
			<div id="view">
				<table id="table_content" width=700>
					<c:forEach var="rvo" items="${list }">
						<tr>
							<td align=left><c:forEach var="i" begin="1"
									end="${rvo.group_tab }">
                &nbsp;&nbsp;
             	</c:forEach> <img src="board/image/right-arrow.png" width=15 height=15>
								<img src="board/image/love.png" width=15 height=15> <%-- ${rvo.name}(${rvo.dbday })&nbsp;&nbsp; --%>
								<c:if test="${rvo.dbday2==today }">
									<sup><img src="board/image/qqq.gif" width=15 height=15></sup>
								</c:if> <br>
					</c:forEach>
				</table>
			</div>
			<form method="post" action="reply_new_insert.do">
				<table id="table_content" width="100%">

					<tr>
						<td width="80%" >
							<input type="hidden" name=bno value="${vo.no }">
								<textarea rows="3" cols="50" name="msg"></textarea>
								<!-- <input type="submit" class="btn btn-sm btn-danger" value="댓글달기"> -->
							</td>

						<td width="20%" class="text-center"><input type="button" class="btn btn-sm btn-danger"
							value="댓글달기" style="vertical-align:middle; height: 40px"></td>
					</tr>
				</table>
				
			</form>
		</div>

	</div>
</body>
</html>