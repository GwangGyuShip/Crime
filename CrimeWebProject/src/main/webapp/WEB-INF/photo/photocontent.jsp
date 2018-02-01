<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
				<h3>�Խñ� ����</h3>
			</center>
		 <div data-width="100%" data-height="350px"
				data-transition="crossfade" class="fotorama" data-nav="thumbs"
				data-loop="true" data-autoplay="2000" data-fit="scaledown">
				
				 <c:forEach var="i" begin="0" end="${vo.filecount }">
					<img src="gallery/${name[i]}">
				</c:forEach> 
 

			</div> 
			 
			<table class="table">

				<tr>
					<td class="text-center info" width="20%">����</td>
					<td class="text-center" width="30%">${vo.gu }</td>
					<td class="text-center info" width="20%">�Խó�¥</td>
					<td class="text-center" width="30%"><fmt:formatDate
							value="${vo.regdate }" pattern="yyyy-MM-dd" /></td>
				</tr>
				<tr>
					<td class="text-center info" width="20%">�ּ�</td>
					<td class="text-center" width="30%">${vo.addr } </td> 
					<td class="text-center info" width="20%">������</td>
					<td class="text-center" width="30%">${vo.good }</td> 
				</tr>
				<tr>
					<td class="text-center info" width="20%">����</td>
					<td class="text-left" colspan="3">${vo.subject }</td>
				</tr>
				<tr>

					<td colspan="4" align="left" valign="top" height="100">
						${vo.content }</td>
				</tr>
				<tr>
					<td colspan="5" class="text-right" height="50px">
					 <form action="goodup.do" method="post" style="width: 100px">
						<button class="btn btn-sm btn-info">
							<img src="gallery/good.png"> �����ؿ�
						</button> 
						<input type="hidden" name="no" value="${vo.no }">
					</form>
					<!-- <input type="submit" class="btn btn-sm btn-info" src="gallery/good.png"> -->
					
					<a href="#" class="btn btn-sm btn-info">����</a> <a href="#"
						class="btn btn-sm btn-danger">����</a> 
						<!-- <a href="#"class="btn btn-sm btn-success" >\B8\F1\B7\CF</a> -->
						<input class="btn btn-sm btn-success" type="button"
								value="���" onclick="javascript:history.back()">
					</td>
				</tr>
			</table>
		</div>
	</div>

	 <div class="container">
		<div class="row">
			<table id="table_content" width=700>
				<tr>
					<td align="center">���</td>
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
								<img src="board/image/love.png" width=15 height=15> ${rvo.name}(${rvo.dbday })&nbsp;&nbsp;
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
								
							</td>

						<td width="20%" class="text-center"><input type="button" class="btn btn-sm btn-danger"
							value="��۾���" style="vertical-align:middle; height: 40px"></td>
					</tr>
				</table>
				
			</form>
		</div>

	</div> 
</body>
</html>