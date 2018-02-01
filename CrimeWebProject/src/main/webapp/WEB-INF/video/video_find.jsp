<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>검색 결과</title>
<link rel='stylesheet' id='font-awesome-theme-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/font-awesome.min.css?ver=1.0' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='videoly-main-style-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/style.css?ver=1.0' type='text/css' media='all' /> -->
<link rel='stylesheet' id='js_composer_front-css' href='http://themebubble.com/demo/videoly/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.0.1' type='text/css' media='all' />
<link rel="stylesheet" type="text/css" href="css/style_video.css" />

<style type="text/css">
@font-face {
   font-family: 'NanumBarunGothic';
   src: url(font/NanumBarunGothic.ttf) format('truetype');
}
body {
	font-family: NanumBarunGothic !important;
}
.page-wrapper {
	padding-bottom: 0 !important;
}
.container-fluid {
	padding: 0 0 0 0 !important;
}

.moviechoice {
	padding: 0 0 25px 15px;
}
.moviechoice span {
	font-size: 22px;
	font-weight: bold;
	margin-right: 10px;
	vertical-align: middle;
}
.movie_category {
	margin-bottom: 13px;
}
.movie_search {
	margin-left: 3%;
	vertical-align: middle;
}
.movie_search .sssss {
	margin-bottom: -12px;
	padding: 5px 30px 5px 30px;
	border: 1px solid gray;
}
.movie_search .sssss:hover {
	border: 3px solid gray;
}
.sss {
  width: 750px;  /* 원하는 너비 설정 */ 
  height: 35px;  /* 높이값 초기화 */
  line-height : normal;  /* line-height 초기화 */
  padding: 2px 5px 2px 5px; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
  border: 1px solid #999;
  border-radius: 0;  /* iSO 둥근모서리 제거 */
  outline-style: none;  /* 포커스시 발생하는 효과 제거를 원한다면 */
  -webkit-appearance: none;  /* 브라우저별 기본 스타일링 제거 */
  font-size: 16px;
}
.searchresult {
	margin-left: 50px;
	font-size: 20px;
}


.snip1535 {
  background-color: rgb(180,180,180);
  border: none;
  color: #ffffff;
  cursor: pointer;
  display: inline-block;
  font-family: 'BenchNine', Arial, sans-serif;
  font-size: 18px;
  line-height: 1em;
  margin: 3px 10px;
  outline: none;
  padding: 12px 35px 10px;
  position: relative;
  /* text-transform: uppercase; */
  font-weight: 700;
}
.snip1535:before,
.snip1535:after {
  border-color: transparent;
  -webkit-transition: all 0.25s;
  transition: all 0.25s;
  border-style: solid;
  border-width: 0;
  content: "";
  height: 24px;
  position: absolute;
  width: 24px;
}
.snip1535:before {
  border-color: rgb(180,180,180);
  border-right-width: 2px;
  border-top-width: 2px;
  right: -4px;
  top: -4px;
}
.snip1535:after {
  border-bottom-width: 2px;
  border-color: rgb(180,180,180);
  border-left-width: 2px;
  bottom: -4px;
  left: -4px;
}
.snip1535:hover,
.snip1535.hover {
  background-color: rgb(75, 46, 204);
}
.snip1535:hover:before,
.snip1535.hover:before,
.snip1535:hover:after,
.snip1535.hover:after {
  height: 100%;
  width: 100%;
  border-color: rgb(75, 46, 204);
}

.tt-nav-tab .active, .tt-tabs-content .active {
background-color: white !important;
}

</style>

<script>
/* function go(no, curpage){
	var url = "videocontent.do?no="+no+"&page="+curpage;
	location.href=url;
	
} */

function clearText(field){
if(field.defaultValue == field.value) field.value = '';
else if(field.value == '') field.value = field.defaultValue;
}
</script>


<script type="text/javascript">
	$(function() {
		//검색
		$('.sssss').click(function() {
			$('#subbb').submit();
		});
	});
</script>


<script type="text/javascript">
$(function(){
	
	$('.sortnamelist').hide();
	
	3
	$('.cateselect').click(function(){
		var sortname = $(this).attr("value");
		
		$('.allvideolist').hide();
		$('.sortnamelist').show();
		
		$.ajax({
			type:'POST',
			url:'video_list.do',
			data:{"sortname":sortname},
			success:function(res){
				$('.sortnamelist').html(res);
			}
		});
	});
	
	$('#selectall').click(function(){
		$('.sortnamelist').hide();
		$('.allvideolist').show();
	});
});

</script>


</head>
<body
	class="page-template-default page page-id-36 custom-background  right_sidebar full-page wpb-js-composer js-comp-ver-5.0.1 vc_responsive">
	<div class="page-wrapper">
	<div class="container-fluid">
	<div id="wrapper">
		
		<div id="content-wrapper">
			<div class="empty-space marg-lg-b20"></div>
			<div id="page-wrapper" class="content top-bottom">
				
				<div class="movie_search">
					<form method="post" action="video_find.do" id="subbb">
					<input type="text" value="검색어를 입력하세요." class="sss" name="search" id="ex_input" onFocus="clearText(this)" onBlur="clearText(this)">
					<input type="image" src="images/searchhh.png" class="sssss" style="width: 85px; height: 35px; 
							background-color: rgb(240,240,240);">
					<!-- <img src="images/search.png" width="35px" height="35px" style="margin-top: -5px;"> -->
					</form>
				</div>
				<div class="empty-space marg-lg-b30"></div>
				
				<div class="searchresult">"${searchcheck }" 에 대한 검색 결과 ${listsize }개</div>
							
				<div class="empty-space marg-lg-b30"></div>
				<div style="margin-left: 3%; margin-right: 3%;">
					
					
					
					<!-- 동영상목록 -->
					<div class="vc_row wpb_row vc_row-fluid">
						
						
						<div class="wpb_column vc_column_container vc_col-sm-9 allvideolist">
							<div class="vc_column-inner ">
								<div class="wpb_wrapper">
									<div class="tt-title-block">
										<h3 class="tt-title-text" style="font-family: NanumBarunGothic !important;">동영상 목록</h3>
									</div>
									<div class="empty-space marg-lg-b25"></div>
									
									<c:forEach var="vo" items="${list }">
									<div
										class="tt-post type-6 clearfix post-100 post type-post status-publish format-video has-post-thumbnail hentry category-fashion tag-classic tag-fashion post_format-post-format-video">
										<a class="tt-post-img custom-hover"
											href="videocontent.do?no=${vo.no }&page=${curpage}">
											<div class="tt-video-attributes">
												<span class="tt-post-quality">HD</span> 
												<span class="tt-post-length">${vo.length }</span>
											</div> <img width="288" height="180"
											src="https://img.youtube.com/vi/${vo.youtubekey }/mqdefault.jpg"
											class="img-responsive wp-post-image" alt="" />
										</a>
										<div class="tt-post-info">
											<div class="tt-post-cat">
												<a rel="category tag" style="font-family: NanumBarunGothic !important;">${vo.sortname }</a>
											</div>
											<a class="tt-post-title c-h5" href="videocontent.do?no=${vo.no }&page=${curpage}"
												 style="font-family: NanumBarunGothic !important;">
												 ${vo.title }
											</a>
											<div class="tt-post-label">
												<span style="font-family: NanumBarunGothic !important;">
													<fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd"/>
												</span>
											</div>
											<div class="simple-text" style="font-family: NanumBarunGothic !important;">
												<c:choose>
													<c:when test="${fn:length(vo.content)>150}">
														<p>${fn:substring(vo.content,0,150) }...</p>
													</c:when>
													<c:otherwise>
														<p>${vo.content }</p>
													</c:otherwise>
												</c:choose>
											</div>
											<div class="tt-post-bottom">
												<span style="font-family: NanumBarunGothic !important;"><a><i class="fa fa-eye" aria-hidden="true"></i>${vo.hit } View</a></span> 
												<span style="font-family: NanumBarunGothic !important;"><a><i class="fa fa-comment" aria-hidden="true"></i>${vo.count } Comment</a></span>
											</div>
										</div>
									</div>
									<div class="empty-space marg-lg-b30"></div>
									</c:forEach>
									
									<div class="empty-space marg-lg-b30"></div>
									<div class="empty-space marg-lg-b30"></div>
									
									<!-- 페이지 나누기 -->
									<div style="text-align: center;">
					
										<ul class="pagination page-numbers">
											 <c:choose>
									 			<c:when test="${curpage>block }">
													<li><a href="video_find.do?page=1&search=${searchcheck}">|◀</a></li>
													<li><a href="video_find.do?page=${fromPage-1 }&search=${searchcheck}">◀</a></li>
												</c:when>
												<c:otherwise>
													<li><span style="color: gray">|◀</span></li>
													<li><span style="color: gray">◀</span></li>
												</c:otherwise>
											</c:choose>
											<c:forEach var="i" begin="${fromPage }" end="${toPage }">
												<c:if test="${i==curpage }">
													<li class="active"><a style="font-family: NanumBarunGothic !important;">${i}</a></li>
												</c:if>
												<c:if test="${i!=curpage }">
													<li><a href="video_find.do?page=${i}&search=${searchcheck}" style="font-family: NanumBarunGothic !important;">${i}</a></li>
												</c:if>
											</c:forEach>
											
											<c:choose>
												<c:when test="${toPage<totalpage }">
													<li><a href="video_find.do?page=${toPage+1 }&search=${searchcheck}">▶</a></li>
													<li><a href="video_find.do?page=${totalpage }&search=${searchcheck}">▶|</a></li>
												</c:when>
												<c:otherwise>
													<li><span style="color: gray">▶</span></li>
													<li><span style="color: gray">▶|</span></li>
												</c:otherwise>
											</c:choose>
										</ul>
					
					
									</div>
									<!-- /페이지 나누기 -->
									
								</div>
							</div>
						</div>
						
						
						
					</div>
					<!-- /동영상목록 -->
					
				</div>
				<div class="empty-space marg-lg-b60 marg-sm-b50 marg-xs-b30"></div>
				<div class="empty-space marg-lg-b60 marg-sm-b50 marg-xs-b30"></div>
			</div>
			
		</div>
	</div>
	</div>
	</div>
	
<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/global.js?ver=1.0'></script>


</body>
</html>

