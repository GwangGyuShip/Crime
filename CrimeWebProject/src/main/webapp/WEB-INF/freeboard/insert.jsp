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
<!-- ���� ���ε� �κ�  -->
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
													+ '<td width=20%>����'
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
				<h3>�۾���</h3>
			</center>
			<form:form method="post" action="insert_ok.do"
				enctype="multipart/form-data" modelAttribute="uploadForm">
				<table class="table table-hover">
					<!-- �з� ,���� ���� �κ� -->
					<h4>�з�&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
						&nbsp; &nbsp; ����</h4>
					<select name="board_group">
						<option>����</option>
						<option>HELP!</option>
						<option>��õ</option>
						<option>����</option>
					</select> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
					&nbsp;


					<select name="board_area">
						<option>���α�</option>
						<option>�߱���</option>
						<option>��걸</option>
						<option>������</option>
						<option>������</option>
						<option>���빮��</option>
						<option>�߶���</option>
						<option>���ϱ�</option>
						<option>���ϱ�</option>
						<option>������</option>
						<option>�����</option>
						<option>����</option>
						<option>���빮��</option>
						<option>������</option>
						<option>��õ��</option>
						<option>������</option>
						<option>���α�</option>
						<option>��õ��</option>
						<option>��������</option>
						<option>���۱�</option>
						<option>���Ǳ�</option>
						<option>���ʱ�</option>
						<option>������</option>
						<option>���ı�</option>
						<option>������</option>
					</select>


					<tr>
						<td width=20% class="text-right">�г���</td>
						<td width=80% class="text-left"><input type=text
							name=board_name size=15></td>
					</tr>


					<tr>
						<td width=20% class="text-right">����</td>
						<td width=80% class="text-left"><input type=text
							name=board_subject size=45></td>
					</tr>


					<tr>
						<td width=20% class="text-right">����</td>
						<td width=80% class="text-left"><textarea rows="10" cols="50"
								name="board_content"></textarea></td>
					</tr>

					<tr>
						<td width=20% class="text-right">÷������</td>
						<td width=80% class="text-left">
							<table class="table table-hover">
								<tr>
									<td class="text-right"><input type=button
										class="btn btn-sm btn-primary" id="add" value="�߰�"> <input
										type=button class="btn btn-sm btn-danger" id="cancel"
										value="���"></td>
								</tr>
							</table>
							<table class="table table-hover" id="fileView">

							</table>
						</td>
					</tr>


					<tr>
						<td width=20% class="text-right">��й�ȣ</td>
						<td width=80% class="text-left"><input type=password
							name=board_pwd size=10></td>
					</tr>


					<tr>

						<td colspan="2" class="text-center"><input type=submit
							value=�۾��� class="btn btn-sm btn-success"> <input
							type=button value=��� class="btn btn-sm btn-danger"
							onclick="javascript:history.back()"></td>

					</tr>

				</table>
			</form:form>
</body>
</html>






