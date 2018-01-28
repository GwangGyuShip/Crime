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

<style type="text/css">
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
.movie_search a:hover img {
	background-color: rgb(217,245,255);
	border: 1px solid gray;
}
.movie_search input {
  width: 300px;  /* 원하는 너비 설정 */ 
  height: 35px;  /* 높이값 초기화 */
  line-height : normal;  /* line-height 초기화 */
  padding: 2px 5px 2px 5px; /* 원하는 여백 설정, 상하단 여백으로 높이를 조절 */
  border: 1px solid #999;
  border-radius: 0;  /* iSO 둥근모서리 제거 */
  outline-style: none;  /* 포커스시 발생하는 효과 제거를 원한다면 */
  -webkit-appearance: none;  /* 브라우저별 기본 스타일링 제거 */
  font-size: 16px;
  margin-left: 50px;
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
$(function () {

    $("div.movie_category button").click(function () {
        $("div.movie_category button").removeClass("hover");
        $(this).addClass("hover");
        
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
			
			
			
			<div id="page-wrapper" class="content top-bottom">
				<div class="empty-space marg-lg-b55 marg-sm-b30"></div>
				<div style="margin-left: 3%; margin-right: 3%;">
					<div class="simple-tesxt">
						<div class="row">
						
							<!-- 위클리 베스트 -->
							<div class="col-md-9">
								
							<div class="vc_column-inner">
								<div class="wpb_wrapper">
									<div class="tt-title-block">
										<h3 class="tt-title-text">Weekly Top 7</h3>
									</div>
									<div class="empty-space  marg-lg-b25"></div>
									<div class="row">
										
										
										<div class="col-md-6 col-md-push-3">
											<div class="tt-post">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v1.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span> <span class="tt-post-length">${v1.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v1.youtubekey }/mqdefault.jpg"
													alt="" width="608" height="505">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v1.sortname }</a>
													</div>
													
													<a class="tt-post-title c-h2"
														href="videocontent.do?no=${v1.no }&page=${curpage}">${v1.title }</a>
													<div class="tt-post-label">
														<span><fmt:formatDate value="${v1.regdate }" pattern="yyyy.MM.dd"/></span>
													</div>
													<div class="simple-text">
														<c:choose>
															<c:when test="${fn:length(v1.content)>230}">
																<p>${fn:substring(v1.content,0,230) }...</p>
															</c:when>
															<c:otherwise>
																<p>${v1.content }</p>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="tt-post-bottom">
														<span><a><i class="fa fa-eye" aria-hidden="true"></i>${v1.hit } Views</a></span>
														<span><a><i class="fa fa-comment" aria-hidden="true"></i>${v1.count } Comments</a></span>
													</div>
												</div>
											</div>
											<div class="empty-space marg-sm-b30"></div>
										</div>
										
										
										<div class="col-sm-6 col-md-3 col-md-pull-6">
											<div class="tt-post type-5">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v2.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span> 
														<span class="tt-post-length">${v2.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v2.youtubekey }/mqdefault.jpg"
													alt="">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v2.sortname }</a>
													</div>
													<a class="tt-post-title c-h5"
														href="videocontent.do?no=${v2.no }&page=${curpage}"><small>
														<c:choose>
															<c:when test="${fn:length(v2.title)>45}">
																${fn:substring(v2.title,0,45) }...
															</c:when>
															<c:otherwise>
																${v2.title }
															</c:otherwise>
														</c:choose>
													</small></a>
												</div>
											</div>
											<div class="empty-space marg-lg-b25"></div>
											<div class="tt-post type-5">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v3.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span> 
														<span class="tt-post-length">${v3.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v3.youtubekey }/mqdefault.jpg"
													alt="">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v3.sortname }</a>
													</div>
													<a class="tt-post-title c-h5"
														href="videocontent.do?no=${v3.no }&page=${curpage}"><small>
														<c:choose>
															<c:when test="${fn:length(v3.title)>45}">
																${fn:substring(v3.title,0,45) }...
															</c:when>
															<c:otherwise>
																${v3.title }
															</c:otherwise>
														</c:choose>
													</small></a>
												</div>
											</div>
											<div class="empty-space marg-lg-b25"></div>
											<div class="tt-post type-5">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v4.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span> 
														<span class="tt-post-length">${v4.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v4.youtubekey }/mqdefault.jpg"
													alt="">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v4.sortname }</a>
													</div>
													<a class="tt-post-title c-h5"
														href="videocontent.do?no=${v4.no }&page=${curpage}"><small>
														<c:choose>
															<c:when test="${fn:length(v4.title)>45}">
																${fn:substring(v4.title,0,45) }...
															</c:when>
															<c:otherwise>
																${v4.title }
															</c:otherwise>
														</c:choose>
													</small></a>
												</div>
											</div>
											<div class="empty-space marg-xs-b25"></div>
										</div>
										
										<div class="col-sm-6 col-md-3">
											<div class="tt-post type-5">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v5.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span>
														<span class="tt-post-length">${v5.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v5.youtubekey }/mqdefault.jpg"
													alt="">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v5.sortname }</a>
													</div>
													<a class="tt-post-title c-h5"
														href="videocontent.do?no=${v5.no }&page=${curpage}"><small>
														<c:choose>
															<c:when test="${fn:length(v5.title)>45}">
																${fn:substring(v5.title,0,45) }...
															</c:when>
															<c:otherwise>
																${v5.title }
															</c:otherwise>
														</c:choose>
													</small></a>
												</div>
											</div>
											<div class="empty-space marg-lg-b25"></div>
											<div class="tt-post type-5">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v6.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span> 
														<span class="tt-post-length">${v6.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v6.youtubekey }/mqdefault.jpg"
													alt="">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v6.sortname }</a>
													</div>
													<a class="tt-post-title c-h5"
														href="videocontent.do?no=${v6.no }&page=${curpage}"><small>
														<c:choose>
															<c:when test="${fn:length(v6.title)>45}">
																${fn:substring(v6.title,0,45) }...
															</c:when>
															<c:otherwise>
																${v6.title }
															</c:otherwise>
														</c:choose>
													</small></a>
												</div>
											</div>
											<div class="empty-space marg-lg-b25"></div>
											<div class="tt-post type-5">
												<a class="tt-post-img custom-hover" href="videocontent.do?no=${v7.no }&page=${curpage}">
													<div class="tt-video-attributes">
														<span class="tt-post-quality">HD</span> 
														<span class="tt-post-length">${v7.length }</span>
													</div>
													<img class="img-responsive"
													src="https://img.youtube.com/vi/${v7.youtubekey }/mqdefault.jpg"
													alt="">
												</a>
												<div class="tt-post-info">
													<div class="tt-post-cat">
														<a rel="category tag">${v7.sortname }</a>
													</div>
													<a class="tt-post-title c-h5"
														href="videocontent.do?no=${v7.no }&page=${curpage}"><small>
														<c:choose>
															<c:when test="${fn:length(v7.title)>45}">
																${fn:substring(v7.title,0,45) }...
															</c:when>
															<c:otherwise>
																${v7.title }
															</c:otherwise>
														</c:choose>
													</small></a>
												</div>
											</div>
											<div class="empty-space marg-lg-b25"></div>
										</div>
									</div>
									<div class="empty-space marg-lg-b40 marg-sm-b30"></div>
								</div>
							</div>
								
								
							</div>
							<!-- /위클리 베스트 -->
							
							
							<!-- 최신동영상 -->
							<div class="col-md-3" style="position: fixed; right: 20px; width: 22%;">
								<div class="sidebar pleft75">
									<div class="empty-space marg-sm-b60"></div>
									<div id="tabbed-posts-3"
										class="sidebar-item widget widget_posts_tabbed_entries">
										<div class="tt-tab-wrapper type-1 clearfix">
											<div class="tt-tab-nav-wrapper">
												<div class="tt-nav-tab">
													<div class="tt-nav-tab-item active">
														<i class="fa fa-bolt" aria-hidden="true"></i>최신동영상
													</div>
													<div class="tt-nav-tab-item">
														<i class="fa fa-heart" aria-hidden="true"></i>뉴스동영상
													</div>
												</div>
											</div>
											<div class="tt-tabs-content clearfix">
												<div class="tt-tab-info active">
													<ul class="tt-post-list">
														<li>
															<div
																class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img  custom-hover "
																	href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">
																	<div class="tt-video-attributes">
																		<span class="tt-post-length">41:27</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">The
																		Legends of Abra Kedabra</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-316 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img tt-video-open custom-hover "
																	href="https://www.youtube.com/embed/gSYJDcRt_Kw?autoplay=1">
																	<div class="tt-video-attributes">
																		<span class="tt-post-quality">DVD</span> <span
																			class="tt-post-length">1:51:29</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-1-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-more/">Animated
																		Movie Trailer for Kickass Movie &#038; More</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-230 post type-post status-publish format-video has-post-thumbnail hentry category-food post_format-post-format-video">
																<a class="tt-post-img tt-video-open custom-hover "
																	href="//fast.wistia.net/embed/iframe/g5pnf59ala?videoFoam=true?autoplay=1">
																	<div class="tt-video-attributes">
																		<span class="tt-post-quality">HD</span> <span
																			class="tt-post-length">18:13</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-1-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/9-best-dessert-recipes/">Mozzarella
																		Chicken Roll Recipe</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/food/"
																			rel="category tag">Food</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-100 post type-post status-publish format-video has-post-thumbnail hentry category-fashion tag-classic tag-fashion post_format-post-format-video">
																<a class="tt-post-img tt-video-open custom-hover "
																	href="https://player.vimeo.com/video/217499569?autoplay=1">
																	<div class="tt-video-attributes">
																		<span class="tt-post-quality">HD</span> <span
																			class="tt-post-length">16:47</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/02/hair-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/a-classic-example-of-video-type-post-on-wordpress-theme-2/">How
																		Does an Editor Think And Feel?</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/fashion/"
																			rel="category tag">Fashion</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img  custom-hover "
																	href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">
																	<div class="tt-video-attributes">
																		<span class="tt-post-length">41:27</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">The
																		Legends of Abra Kedabra</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img  custom-hover "
																	href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">
																	<div class="tt-video-attributes">
																		<span class="tt-post-length">41:27</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">The
																		Legends of Abra Kedabra</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img  custom-hover "
																	href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">
																	<div class="tt-video-attributes">
																		<span class="tt-post-length">41:27</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">The
																		Legends of Abra Kedabra</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
													</ul>
													<a class="c-btn type-2"
														href="http://themebubble.com/demo/videoly/">Show More</a>
												</div>
												
												<div class="tt-tab-info">
													<ul class="tt-post-list">
														<li>
															<div
																class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img  custom-hover "
																	href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">
																	<div class="tt-video-attributes">
																		<span class="tt-post-length">41:27</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-for-new-kickass-movie-more/">The
																		Legends of Abra Kedabra</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-316 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
																<a class="tt-post-img tt-video-open custom-hover "
																	href="https://www.youtube.com/embed/gSYJDcRt_Kw?autoplay=1">
																	<div class="tt-video-attributes">
																		<span class="tt-post-quality">DVD</span> <span
																			class="tt-post-length">1:51:29</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-1-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/animated-movie-trailer-more/">Animated
																		Movie Trailer for Kickass Movie &#038; More</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/movies/"
																			rel="category tag">Movies</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-230 post type-post status-publish format-video has-post-thumbnail hentry category-food post_format-post-format-video">
																<a class="tt-post-img tt-video-open custom-hover "
																	href="//fast.wistia.net/embed/iframe/g5pnf59ala?videoFoam=true?autoplay=1">
																	<div class="tt-video-attributes">
																		<span class="tt-post-quality">HD</span> <span
																			class="tt-post-length">18:13</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-1-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/9-best-dessert-recipes/">Mozzarella
																		Chicken Roll Recipe</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/food/"
																			rel="category tag">Food</a>
																	</div>
																</div>
															</div>
														</li>
														<li>
															<div
																class="tt-post type-7 clearfix post-100 post type-post status-publish format-video has-post-thumbnail hentry category-fashion tag-classic tag-fashion post_format-post-format-video">
																<a class="tt-post-img tt-video-open custom-hover "
																	href="https://player.vimeo.com/video/217499569?autoplay=1">
																	<div class="tt-video-attributes">
																		<span class="tt-post-quality">HD</span> <span
																			class="tt-post-length">16:47</span>
																	</div> <img width="104" height="63"
																	src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/02/hair-104x63.jpg"
																	class="img-responsive wp-post-image" alt="" />
																</a>
																<div class="tt-post-info">
																	<a class="tt-post-title c-h6"
																		href="http://themebubble.com/demo/videoly/a-classic-example-of-video-type-post-on-wordpress-theme-2/">How
																		Does an Editor Think And Feel?</a>
																	<div class="tt-post-cat">
																		<a
																			href="http://themebubble.com/demo/videoly/category/fashion/"
																			rel="category tag">Fashion</a>
																	</div>
																</div>
															</div>
														</li>
													</ul>
													<a class="c-btn type-2"
														href="http://themebubble.com/demo/videoly/">Show More</a>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div>
							<!-- /최신동영상 -->

						</div>
					</div>
					
					
					<!-- 동영상목록 -->
					<div class="vc_row wpb_row vc_row-fluid">
						<div class="moviechoice">
							<div class="movie_category">
								<span>카테고리</span>
								<button class="snip1535 hover">전체</button>
								<button class="snip1535">뉴스</button>
								<button class="snip1535">유튜브</button>
								<button class="snip1535">다큐멘터리</button>
								<button class="snip1535">UCC</button>
								<button class="snip1535">기타</button>
							</div>
							<div class="movie_search">
								<span>검색</span>
								<input type="text" value="검색어를 입력하세요" id="ex_input" onFocus="clearText(this)" onBlur="clearText(this)">
								<a href="#"><img src="images/search.png" width="35px" height="35px" style="margin-top: -5px;"></a>
							</div>
						</div>
						<div class="empty-space marg-lg-b30"></div>
					
						<!-- 동영상목록 왼쪽영역 -->
						<div class="wpb_column vc_column_container vc_col-sm-9">
							<div class="vc_column-inner ">
								<div class="wpb_wrapper">
									<div class="tt-title-block">
										<h3 class="tt-title-text">동영상 목록</h3>
									</div>
									<div class="empty-space marg-lg-b25"></div>
									
									<c:forEach var="vo" items="${list }">
									<div
										class="tt-post type-6 clearfix post-100 post type-post status-publish format-video has-post-thumbnail hentry category-fashion tag-classic tag-fashion post_format-post-format-video">
										<a class="tt-post-img tt-video-open custom-hover"
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
												<a rel="category tag">${vo.sortname }</a>
											</div>
											<a class="tt-post-title c-h5" href="videocontent.do?no=${vo.no }&page=${curpage}">${vo.title }</a>
											<div class="tt-post-label">
												<span>
													<fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd"/>
												</span>
											</div>
											<div class="simple-text">
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
												<span><a><i class="fa fa-eye" aria-hidden="true"></i>${vo.hit } View</a></span> 
												<span><a><i class="fa fa-comment" aria-hidden="true"></i>${vo.count } Comment</a></span>
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
                   									<li><a href="videolist.do?page=1">|◀</a></li>
                   									<li><a href="videolist.do?page=${fromPage-1 }">◀</a></li>
                 								</c:when>
												<c:otherwise>
													<li><span style="color: gray">|◀</span></li>
													<li><span style="color: gray">◀</span></li>
												</c:otherwise>
											</c:choose>
											<c:forEach var="i" begin="${fromPage }" end="${toPage }">
												<c:if test="${i==curpage }">
													<li class="active"><a>${i}</a></li>
												</c:if>
												<c:if test="${i!=curpage }">
													<li><a href="videolist.do?page=${i}">${i}</a></li>
												</c:if>
											</c:forEach>
											<c:choose>
												<c:when test="${toPage<totalpage }">
													<li><a href="videolist.do?page=${toPage+1 }">▶</a></li>
													<li><a href="videolist.do?page=${totalpage }">▶|</a></li>
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
						<!-- /동영상목록 왼쪽영역 -->
						
						
						

						
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
	<!-- <script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"http:\/\/themebubble.com\/demo\/videoly\/wp-json\/","namespace":"contact-form-7\/v1"},"recaptcha":{"messages":{"empty":"Please verify that you are not a robot."}},"cached":"1"};
/* ]]> */
</script> -->
	<!-- <script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.8'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-includes/js/comment-reply.min.js?ver=4.8.4'></script> -->
<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/global.js?ver=1.0'></script>
<!-- <script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/match.height.min.js?ver=1.0'></script>
		<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/image.loaded.min.js?ver=1.0'></script>
<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/jquery.appear.js?ver=1.0'></script>
<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.0.1'></script>
<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/idangerous.swiper.min.js?ver=1.0'></script>
<script type='text/javascript'>
/* <![CDATA[ */
var newsletter = {"messages":{"email_error":"The email is not correct","name_error":"The name is not correct","surname_error":"The last name is not correct","privacy_error":"You must accept the privacy statement"},"profile_max":"20"};
/* ]]> */
</script> -->
	<!-- <script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/newsletter/subscription/validate.js?ver=4.9.8'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/demo-switcher/assets/js/switcher.js?ver=1.0.0'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-includes/js/wp-embed.min.js?ver=4.8.4'></script> -->

</body>
</html>

