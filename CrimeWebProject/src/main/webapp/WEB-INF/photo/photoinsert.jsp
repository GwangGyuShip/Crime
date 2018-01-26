<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
	var fileIndex = 0;
	var c = 0;
	$(function() {
		$('#add').click(
				function() {
					if (fileIndex > 2)
						alert('더이상 사진을 올릴수 없습니다.')
					else {

						$('#fileView').append(
								'<tr id=f' + (fileIndex) + '>'
										+ '<td width=80% align=left>'
										+ '<input type=file id=f_'
										+ (fileIndex) + ' name=files['
										+ fileIndex + '] size="15"'
										+ '</td></tr>');

						$('#f_' + (fileIndex)).on('change', function() {

							readURL(this);
						});
						fileIndex = fileIndex + 1;
					}

				});
		$('#cancel').click(function() {
			$('#f' + (fileIndex - 1)).remove();
			fileIndex = fileIndex - 1;
			if (fileIndex < 0)
				fileIndex = 0;
			$('#ff' + (fileIndex + 1)).remove();

		});
		$('#board_insertBtn').click(function() {
			alert('f' + (fileIndex - 1));
		});

	});
	
	

	function readURL(input) {
		if (input.files && input.files[0]) {

			var reader = new FileReader();

			reader.onload = function(e) {
				$('#myimg')
						.append(
								'<div id="myimd"'
										+ (fileIndex)
										+ ' style="display:inline-block;">'
										+ '<img id=ff'
										+ (fileIndex)
										+ ' style="border:1px solid black;" src="#" width="200px;"; height="280px";/>'
										+ '</div>');
				$('#ff' + (fileIndex)).attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
</script>
<style type="text/css">
.row {
	margin: 0px auto;
	width: 700px;
}

#board_subInput {
	height: 30px;
	width: 100%;
}

#board_subject {
	border-bottom: 3px solid black;
}

.s_box {
	font-size: 18pt;
	width: 150px;
	margin-bottom: 10px;
}

.p_top {
	border-bottom: 3px solid black;
	font-size: 18pt;
	height: 47px;
	width: 100%;
}
</style>

</head>
<body>
	<div>
		<div style="height: 20px"></div>
		<!-- 게시판 프로필 -->
		<div class="container">
			<form action="board_insert_ok.do" method="POST" id=frm
				enctype="multipart/form-data">
				<div class="row">
					<!-- 게시판 insert -->
					<div>
						<div class="s_box">
						
							<div style="width: 300px;">
								<a href="photoinsert.do?kang=강남" class="btn btn-primary" style="height: 40px; width: 70px; font-size: 16pt">
									강남
								</a> &nbsp;
								<a href="photoinsert.do?kang=강북" class="btn btn-primary" style="height: 40px; width: 70px; font-size: 16pt">
									강북
								</a>
										
									

							</div>
						</div>
					</div>
					<div>
						<div class="s_box">
							<div style="width: 300px;">
								위치 <select style="width: 150px; height: 35px;">
									<c:forEach var="vo" items="${list }">
										<option>${vo.gu }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="p_top" style="">
						제목 <input type="text" style="width: 80%">
					</div>

					<table class="table">

						<tr>
							<td height=20px></td>
						</tr>
						<tr>
							<td width=100% colspan="2"><textarea class="form-control"
									rows="15" cols="100%" id="b_content" name="b_content"></textarea>
							</td>
						</tr>
						<tr>
							<td width="20%" class="text-right">첨부파일</td>
							<td width="80%" class="text-left">
								<table class="table table-hover">
									<tr>
										<td class="text-right"><input type="button"
											class="btn btn-sm btn-info" id="add" value="추가"> <input
											type="button" class="btn btn-sm btn-primary" id="cancel"
											value="취소"></td>

									</tr>
								</table>
								<table class="table table-hover" id="fileView">

								</table>
							</td>

						</tr>




						<tr>

							<td colspan="2">
								<h3>사진미리보기</h3>
								<div
									style="border-top: 5px solid black; border-bottom: 5px solid black; width: 100%; height: 300px; text-align: center;"
									id="fileDiv">
									<div id="myimg" style="display: inline;"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" class="text-right" height=30px>
								<input	class="btn btn-sm" style="background-color: #2961d3; color: white;  height: 40px; width: 70px; font-size: 16pt;" type="button"
								value="등록" ></td>
						</tr>

					</table>
				</div>
			</form>
		</div>
	</div>


</body>
</html>