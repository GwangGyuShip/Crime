<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
      ${fn:substring("aaa",1,3)}
      fn => ���ڿ�(String),List
 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>������ ��</title>
<!-- ��Ʈ��Ʈ�� �⺻ CSS ���� -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- �ۿ��� CSS -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script> -->
<!-- ��ư UI  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- ��ưŬ���� ��ȭ -->
<script>
	$(function() {
		$("input").checkboxradio();
	});
</script>

<!-- ��ü ũ��  -->
<style type="text/css">
.row {
	margin: 0px auto;
	width: 900px;
}

.goo {
	margin-right: 10px;
}
/* �ڽ����� ���� */
#goobox {
	margin-bottom: 10px;
}
/* ��  �ٲ� */
#gooOneLine {
	margin-bottom: 10px;
}

#gooTwoLine {
	margin-bottom: 10px;
}

#menu {
	text-align: left;
}
/* �˻�â ���� ���� �˻� */
select {
	width: 150px;
	height: 27px;
	font-family: inherit;
	-moz-appearance: none;
	appearance: none;
	border: 1px solid #999;
	border-radius: 0px;
}

select::-ms-expand {
	/* for IE 11 */
	display: none;
}

label {
	width: 100px;
	border-radius: 2px;
	margin-top: 10px;
}

.page-wrapper {
	margin-left: 120px;
}
</style>



</head>


<body>
	<%--  <%=application.getRealPath("/") %> --%>
	<div class="page-wrapper">
		<div class="container-fluid">
			<div class="container">
				<div class="row">
					<!-- ������ �� �ΰ� -->
					<center id="menu">
						<img src="image/menu.png">
					</center>

					<!-- �� ���� Ÿ��Ʋ -->
					<table>
						<h2 class="text-left">����</h2��>
					</table>


					<!-- üũ�ڽ�(��) �� �� ���� -->
					<div class="container" id="goobox">
						<!-- 1��° Line -->


						<label class="goo btn btn-success"> <input type="checkbox"
							autocomplete="off"> ���α�
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> �߱���
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ��걸
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���빮��
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> �߶���
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���ϱ�
						</label> <br> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���ϱ�
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> �����
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ����
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���빮��
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ��õ��
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label> <br> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���α�
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ��õ��
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ��������
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���۱�
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���Ǳ�
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���ʱ�
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ���ı�
						</label> <br> <label class="goo btn btn-success"> <input
							type="checkbox" autocomplete="off"> ������
						</label>



					</div>




					<!-- �з� ���� �� -->
					<table>
						<h2 class="text-center">�з�</h2>
					</table>

					<!-- �з� ���� �� -->
					<div class="container" id="goobox">
						<div class="btn-group" data-toggle="buttons">

							<label class="goo btn btn-success"> <input
								type="checkbox" autocomplete="off"> HELP!
							</label> <label class="goo btn btn-success"> <input
								type="checkbox" autocomplete="off"> ����
							</label> <label class="goo btn btn-success"> <input
								type="checkbox" autocomplete="off"> ��õ
							</label> <label class="goo btn btn-success"> <input
								type="checkbox" autocomplete="off"> ����
							</label>



						</div>
					</div>


					<table>

					</table>

					<!-- �Խ��� ���̺� -->
					<table class="table table-hover" width=700>

						<tr class="info">
							<th class="text-center" width=7%>��ȣ</th>
							<th class="text-center" width=10%>�з�</th>
							<th class="text-center" width=10%>����</th>
							<th class="text-left" width=30%>����</th>
							<th class="text-center" width=15%>�۾���</th>
							<th class="text-center" width=20%>�ۼ���</th>
							<th class="text-center" width=10%>��ȸ��</th>
						</tr>
						<!-- DB�� ����� �Խñ�  -->
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

					<!-- ����¡, ���� �����  �Խ��� ���� ���̴� ��-->
					<table class="table table-hover" width=700>
						<ul class="pagination">
							<%-- <a href="list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-primary">����</a>&nbsp;
                <a href="list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-info">����</a>&nbsp;&nbsp; --%>
							<c:choose>
								<c:when test="${curpage>block }">
									<li><a href="Oim_meetpage.do?page=1">|��</a></li>
									<li><a href="Oim_meetpage.do?page=${fromPage-1 }">��</a></li>
								</c:when>
								<c:otherwise>
									<li><span style="color: gray">|��</span></li>
									<li><span style="color: gray">��</span></li>
								</c:otherwise>
							</c:choose>
							<c:forEach var="i" begin="${fromPage }" end="${toPage }">
								<c:if test="${i==curpage }">
									<li class="active"><a>${i}</a></li>
								</c:if>
								<c:if test="${i!=curpage }">
									<li><a href="Oim_meetpage.do?page=${i}">${i}</a></li>
								</c:if>
							</c:forEach>
							<c:choose>
								<c:when test="${toPage<totalpage }">
									<li><a href="Oim_meetpage.do?page=${toPage+1 }">��</a></li>
									<li><a href="Oim_meetpage.do?page=${totalpage }">��|</a></li>
								</c:when>
								<c:otherwise>
									<li><span style="color: gray">��</span></li>
									<li><span style="color: gray">��|</span></li>
								</c:otherwise>
							</c:choose>
						</ul>
						
						<td class="text-right">
						<select>
							<option>��ü</option>
							<option>����</option>
							<option>����</option>
							<option>�۾���</option>
						</select>
						<input type="text" szie=10>
						<button>�˻�</button>
						<a href="insert.do" class="btn btn-sm btn-primary">����</a>
							</td>
					</table>

W
				</div>
			</div>
		</div>
	</div>
</body>
</html>