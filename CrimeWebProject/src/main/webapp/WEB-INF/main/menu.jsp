<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	.menu_list {
		font-size: 14pt;
		padding: 10px 15px;
		margin-top: 10px;
		/* background-color: black; */
		border-radius: 5px;
		color: #99abb4;
		cursor: pointer;
	}
	.menu_list > img {
		margin-right: 10px;
	}
	
	.menu_active {
		color: white;
		background: #1c81d9;
	}
</style>
<script type="text/javascript">
	$(function() {
		var link = location.pathname.split('/')[2].split('.')[0];
		var id = "#menu_" + link;
		
		$(id).removeClass("menu_hover");
		$(id).addClass("menu_active");
		$(id).find('img').attr('src', 'images/' + $(id).attr('id') + '_click.png');

		$(".menu_hover").hover(function() {
			$(this).css("color", "#1c81d9");

			var id = $(this).attr('id');
			$(this).find('img').attr('src', 'images/' + id + '_hover.png');
		}, function() {
			$(this).css("color", "#99abb4");

			var id = $(this).attr('id');
			$(this).find('img').attr('src', 'images/' + id + '.png');
		});
	});
</script>
</head>
<body>
	<div class="menu_list menu_hover" id="menu_main" onclick="location.href='main.do'"><img src="images/menu_main.png">홈</div>
	<div class="menu_list menu_hover" id="menu_crimerate" onclick="location.href='crimerate.do'"><img src="images/menu_crimerate.png">지도</div>
	<div class="menu_list menu_hover" id="menu_table" onclick="location.href='table.do'"><img src="images/menu_table.png">테이블</a></div>
	<div class="menu_list menu_hover" id="menu_news" onclick="location.href='news.do'"><img src="images/menu_news.png">뉴스</div>
	<div class="menu_list menu_hover" id="menu_videolist" onclick="location.href='videolist.do'"><img src="images/menu_videolist.png">동영상</div>
	<div class="menu_list menu_hover" id="menu_gallery" onclick="location.href='#'"><img src="images/menu_gallery.png">갤러리</div>
	<div class="menu_list menu_hover" id="menu_list" onclick="location.href='#'"><img src="images/menu_list.png">진실의 방</div>
</body>
</html>