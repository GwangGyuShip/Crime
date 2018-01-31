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
<title>범죄 관련 동영상</title>
<link rel='stylesheet' id='font-awesome-theme-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/font-awesome.min.css?ver=1.0' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='videoly-main-style-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/style.css?ver=1.0' type='text/css' media='all' /> -->
<link rel='stylesheet' id='js_composer_front-css' href='http://themebubble.com/demo/videoly/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.0.1' type='text/css' media='all' />
<link rel="stylesheet" type="text/css" href="css/style_video.css" />
<script type="text/javascript" src="js/jquery-2.1.3.min.js"></script>
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
  padding: 12px 40px 10px;
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
function go(no, curpage){
	var url = "videocontent.do?no="+no+"&page="+curpage;
	location.href=url;
	
}

function clearText(field){
if(field.defaultValue == field.value) field.value = '';
else if(field.value == '') field.value = field.defaultValue;
}
</script>



<script type="text/javascript">
$(function(){
	$('.page_btn').click(function(){
		
		var sortname = '${sortname}';
		
		var page=$(this).attr("data-page");
		
		$.ajax({
			type:'POST',
			url:'video_list.do',
			data:{"sortname":sortname,"page":page},
			success:function(res){
				$('.sortnamelist').html(res);
			}
		});
	});
});
</script>

</head>
<body>
	
	<div class="wpb_column vc_column_container vc_col-sm-9">
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
							<span class="tt-post-quality">HD</span> <span
								class="tt-post-length">${vo.length }</span>
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
							<span>
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
								<li><a href="video_list.do?page=1">|◀</a></li>
								<li><a href="video_list.do?page=${fromPage-1 }">◀</a></li>
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
								<li class="page_btn" data-page="${i}"><a style="font-family: NanumBarunGothic !important;">${i}</a></li>
							</c:if>
						</c:forEach>
						
						<c:choose>
							<c:when test="${toPage<totalpage }">
								<li><a href="video_list.do?page=${toPage+1 }">▶</a></li>
								<li><a href="video_list.do?page=${totalpage }">▶|</a></li>
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


</body>
</html>

