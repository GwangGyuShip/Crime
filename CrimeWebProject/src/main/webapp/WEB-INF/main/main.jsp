<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=JejuGothic" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<style type="text/css">
@font-face {
   font-family: 'NanumBarunGothic';
   src: url(../main/font/NanumBarunGothic.ttf) format('truetype');
}

html, body {
	height: 100%;
	margin: 0;
	padding: 0;
	-ms-overflow-style: none;
	background-color: #e6e6f0;
	font-family: NanumBarunGothic !important;
}

::-webkit-scrollbar {
	display:none;
}

.main_header {
	background: #2961d3;
	position: fixed;
	top: 0px;
	left: 0px;
	padding: 10px 20px;
	box-shadow: 0px 2px 5px #333;
	z-index: 3;
	border: none !important;
}
.main_menu {
	background: #4f525b;
	position: fixed;
	top: 60px;
	left: 0px;
	padding: 10px;
}
.main_content { 
	background-color: #e6e6f0;
	position: absolute;
	top: 60px;
	left: 250px;
	padding: 10px;
	min-height: 100%;
}
.main_footer {
	background: #1c81d9;
	position: absolute;
	/* top: 2060px; */
	left: 250px;
	padding: 10px;
}

</style>
<script>
$(function() {
	$('html').stop().animate({scrollLeft: $("html").width()}, 800);
	
	$('.main_menu').hover(function() {
		$('html').stop().animate({scrollLeft: 0}, 300);
	}, function() {
		$('html').stop().animate({scrollLeft: $("html").width()}, 800);
	});
});
</script>
</head>
<body>
	<table class="grid">
		<tr>
			<td class="main_header" width="100%" height="60px">
				<tiles:insertAttribute name="header" />
			</td>
		</tr>
		<tr>
			<td class="main_menu" width="250px" height="100%">
				<tiles:insertAttribute name="menu" />
			</td>
			<td class="main_content" width="86.75%" >
				<tiles:insertAttribute name="content" />
			</td>
		</tr>
		<tr>
			<td class="main_footer" width="86.75%" style="float: right;" height="30px">
				<tiles:insertAttribute name="footer" />
			</td>
		</tr>
	</table>
</body>
</html>