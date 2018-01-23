<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
.row {
	margin: 0px auto;
	width: 700px;
}
</style>
<!-- 파일 업로드 부분  -->
<script type="text/javascript">
	var fileIndex = 0;
	$(function() {
		/*
		    click(function(){}) = onclick
		    change(function(){}) = select onchange
		    hover(function(){}) = onmouseover
		    
		    text() 
		    html()
		    attr()
		    append
		    remove()
		 */
		$('#add')
				.click(
						function() {
							$('#fileView')
									.append(
											'<tr id=f'
													+ (fileIndex)
													+ '>'
													+ '<td width=20%>파일'
													+ (fileIndex + 1)
													+ '</td>'
													+ '<td width=80% align=left>'
													+ '<input type=file name=files['+fileIndex+'] size=30>'
													+ '</td></tr>');
							fileIndex = fileIndex + 1;
						});
		$('#cancel').click(function() {
			$('#f' + (fileIndex - 1)).remove();
			fileIndex = fileIndex - 1;
			if (fileIndex < 0)
				fileIndex = 0;
		});
	});
</script>
<style type="text/css">
select {
	margin-bottom: 10px;
}
</style>




</head>
<body>
	<div class="container">
		<div class="row">
			<center>
				<h3>글쓰기</h3>
			</center>
			<form:form method="post" action="insert_ok.do"
				enctype="multipart/form-data" modelAttribute="uploadForm">
				<table class="table table-hover">
					<!-- 분류 ,동네 선택 부분 -->
					<h4>분류&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; 동네</h4>
					<select name="board_group">
						<option>자유</option>
						<option>HELP!</option>
						<option>추천</option>
						<option>문의</option>
					</select> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
					&nbsp;


					<select name="board_area">
						<option>종로구</option>
						<option>중구구</option>
						<option>용산구</option>
						<option>성동구</option>
						<option>광진구</option>
						<option>동대문구</option>
						<option>중랑구</option>
						<option>성북구</option>
						<option>강북구</option>
						<option>도봉구</option>
						<option>노원구</option>
						<option>은평구</option>
						<option>서대문구</option>
						<option>마포구</option>
						<option>양천구</option>
						<option>강서구</option>
						<option>구로구</option>
						<option>금천구</option>
						<option>영등포구</option>
						<option>동작구</option>
						<option>관악구</option>
						<option>서초구</option>
						<option>강남구</option>
						<option>송파구</option>
						<option>강동구</option>
					</select>


					<tr>
						<td width=20% class="text-right">닉네임</td>
						<td width=80% class="text-left"><input type=text
							name=board_name size=15></td>
					</tr>


					<tr>
						<td width=20% class="text-right">제목</td>
						<td width=80% class="text-left"><input type=text
							name=board_subject size=45></td>
					</tr>


					<tr>
						<td width=20% class="text-right">내용</td>
						<td width=80% class="text-left"><textarea rows="10" cols="50"
								name="board_content"></textarea></td>
					</tr>

					<tr>
						<td width=20% class="text-right">첨부파일</td>
						<td width=80% class="text-left">
							<table class="table table-hover">
								<tr>
									<td class="text-right"><input type=button
										class="btn btn-sm btn-primary" id="add" value="추가"> <input
										type=button class="btn btn-sm btn-danger" id="cancel"
										value="취소"></td>
								</tr>
							</table>
							<table class="table table-hover" id="fileView">

							</table>
						</td>
					</tr>


					<tr>
						<td width=20% class="text-right">비밀번호</td>
						<td width=80% class="text-left"><input type=password
							name=board_pwd size=10></td>
					</tr>


					<tr>

						<td colspan="2" class="text-center"><input type=submit
							value=글쓰기 class="btn btn-sm btn-success"> <input
							type=button value=취소 class="btn btn-sm btn-danger"
							onclick="javascript:history.back()"></td>

					</tr>

				</table>
			</form:form>
</body>
</html>






