<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--
      ${fn:substring("aaa",1,3)}
      fn => ���ڿ�(String),List
 --%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">

<style type="text/css">
.imgList {
	padding: 0px;
	width: 300px;
}

.hovereffect {
	width: 300px;
	height: 300px;
	float: left;
	overflow: hidden;
	position: relative;
	text-align: center;
	cursor: default;
	height: 100%;
}

.hovereffect .overlay {
	width: 100%;
	height: 100%;
	position: absolute;
	overflow: hidden;
	top: 0;
	left: 0;
}

.hovereffect img {
	display: block;
	width: 100%;
	height: 100%;
	position: relative;
	-webkit-transition: all 0.4s ease-in;
	transition: all 0.4s ease-in;
}

.hovereffect:hover img {
	filter:
		url('data:image/svg+xml;charset=utf-8,<svg xmlns="http://www.w3.org/2000/svg"><filter id="filter"><feColorMatrix type="matrix" color-interpolation-filters="sRGB" values="0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0.2126 0.7152 0.0722 0 0 0 0 0 1 0" /><feGaussianBlur stdDeviation="3" /></filter></svg>#filter');
	filter: grayscale(1) blur(3px);
	-webkit-filter: grayscale(1) blur(3px);
	-webkit-transform: scale(1.2);
	-ms-transform: scale(1.2);
	transform: scale(1.2);
}

.hovereffect h2 {
	text-transform: uppercase;
	text-align: center;
	position: relative;
	font-size: 17px;
	padding: 10px;
	background: rgba(0, 0, 0, 0.6);
}

.hovereffect a.info {
	display: inline-block;
	text-decoration: none;
	padding: 7px 14px;
	border: 1px solid #fff;
	margin: 50px 0 0 0;
	background-color: transparent;
}

.hovereffect a.info:hover {
	box-shadow: 0 0 5px #fff;
}

.hovereffect a.info, .hovereffect h2 {
	-webkit-transform: scale(0.7);
	-ms-transform: scale(0.7);
	transform: scale(0.7);
	-webkit-transition: all 0.4s ease-in;
	transition: all 0.4s ease-in;
	opacity: 0;
	filter: alpha(opacity = 0);
	color: #fff;
	text-transform: uppercase;
}

.hovereffect:hover a.info, .hovereffect:hover h2 {
	opacity: 1;
	filter: alpha(opacity = 100);
	-webkit-transform: scale(1);
	-ms-transform: scale(1);
	transform: scale(1);
}

.b_content {
	border: 1px solid black;
	width: 270px;
	height: 30px;
}

.row {
	margin: 0px auto;
	/* width: 80%; */
}

.photohead {
	width: 100%;
	height: 50px;
	margin-top: 30px;
	margin-bottom: 20px;
	border-bottom: 3px solid black;
	text-align: center;
	border-bottom: 3px solid black;
}

.photomiddle {
	width: 300px;
	height: 50px;
	border-bottom: 5px solid black;
	text-align: left;
}

.photolow {
	width: 100%;
	height: 180px;
	margin-top: 50px;
	margin-bottom: 10px;
	border-bottom: 3px solid black;
	text-align: left;
	border-bottom: 3px solid black;
}

.btn {
	size: 80px;
	width: 90px;
	font-size: 15pt;
}

.btn_1 {
	size: 90px;
	width: 140px;
	font-size: 17pt;
	background-color: #2961d3;
	margin-bottom: 30px;
	margin-right: 35px;
}

.photo_content {
	width: 100%;
}
</style>
</head>
<body>
	<div class="container" style="width: 90%">
		<div class="row">
			<div class="photohead">
				<h1>������ �Խ���</h1>
			</div>
			<div class="photomiddle">
				&nbsp; &nbsp; &nbsp; 
				
				<a href="photokang.do?kang=����">
					<button class="btn btn-info">����</button>
				</a> &nbsp; &nbsp; &nbsp;
				<a href="photokang.do?kang=����">
					<button class="btn btn-info">����</button>
				</a>
			</div>
			<div class="photolow">
			
				<c:forEach var="vo" items="${list }">
				
					
						<a href="#">
							<button class="btn btn-info btn_1">${vo.gu }</button>
						</a>
					
				</c:forEach>

			</div>

			<!-- foreach�� ������ŭ �Ѹ��� -->
			<!--//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////  -->
			<div class="11">
				<div style="height: 140px; margin: 0 auto;">
					<img
						style="display: block; margin-left: auto; margin-right: auto; height: 150px;"
						src="gallery/skull.png" height="100%">
				</div>
				<div style="border-bottom: 2px solid black; margin: 0px auto;">
					<c:forEach var="i" begin="1" end="4">
						<div style="height: 300px; width: 320px; display: inline-block;">
							<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 imgList"
								style="width: 255px; margin-bottom: 15px; margin-left: 35px;">
								<div class="hovereffect">
									<img class="img-responsive" src="gallery/a2.jpg">
									<div class="overlay">
										<h2>��������...</h2>
										<a class="info" href="photocontent.do">���� ����</a>
									</div>
								</div>
								<div
									style="width: 50px; height: 50px; text-align: center; margin-top: 230px;">
									<p>����</>
									<p>aaa</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<!-- /////////////////////////////////////////////////////////////////////////////////////////////////////////////// -->
				<div style="border-bottom: 3px solid black">
					<h1 style="text-align: center;">
						<strong>���빮�� ��� ���ص帳�ϴ�.</strong>
					</h1>
					<c:forEach var="i" begin="1" end="6">
						<div style="height: 300px; width: 450px; display: inline-block;">
							<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 imgList"
								style="width: 255px; margin-top: 15px; margin-bottom: 15px; margin-left: 45px;">
								<div class="hovereffect">
									<img class="img-responsive" src="gallery/a1.jpg">
									<div class="overlay">
										<h2>��������...</h2>
										<a class="info" href="photocontent.do">���� ����</a>
									</div>
								</div>
								<div
									style="width: 50px; height: 50px; text-align: center; margin-top: 230px;">
									<p>����</>
									<p>aaa</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div style="height: 100px; text-align: center;">
					

				</div>
				<table class="table ">
				<tr>
					<td class="text-left" style="width: 33%">
					<form method="post" action="find.do" style="width: 100%">
						�˻�:<select name="fs" style="height: 30px;">
									<option value="name">�ּ�</option>
									<option value="subject">����</option>
									<option value="content">����</option>
								</select>
								<input type="text" name="ss" size="10" style="height: 30px;">
								<input type="submit" value="ã��" class="btn btn-sm btn-danger" style="width: 75px; height: 38px">
					</form>
					
					</td>
					<td class="text-center" style="width: 33%">
						<a href="list.do?page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-primary" style="width: 75px; height: 38px">����</a>
						[1] [2] [3]
						<a href="list.do?page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-success" style="width: 75px; height: 38px">����</a>
					</td>
					<td class="text-right" style="width: 33%">
					<a href="photoinsert.do" style="width: 135px; height: 40px" type="button" class="btn btn-info">�Խñ� �ø���</a>
						
					</td>
				</tr>
			</table>

			</div>
		</div>
</body>
</html>






