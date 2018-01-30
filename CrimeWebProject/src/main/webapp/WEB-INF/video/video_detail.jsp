<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="en-US" prefix="og: http://ogp.me/ns#">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>동영상</title>
<link rel='stylesheet' id='font-awesome-theme-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/font-awesome.min.css?ver=1.0' type='text/css' media='all' />
<!-- <link rel='stylesheet' id='videoly-main-style-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/style.css?ver=1.0' type='text/css' media='all' /> -->
<link rel="stylesheet" type="text/css" href="css/style_video.css" />
<link rel='stylesheet' id='js_composer_front-css' href='http://themebubble.com/demo/videoly/wp-content/plugins/js_composer/assets/css/js_composer.min.css?ver=5.0.1' type='text/css' media='all' />


<script data-no-minify="1" data-cfasync="false">
	(function(w, d) {
		function a() {
			var b = d.createElement("script");
			b.async = !0;
			b.src = "http://themebubble.com/demo/videoly/wp-content/plugins/wp-rocket/inc/front/js/lazyload.1.0.5.min.js";
			var a = d.getElementsByTagName("script")[0];
			a.parentNode.insertBefore(b, a)
		}
		w.attachEvent ? w.attachEvent("onload", a) : w.addEventListener("load",
				a, !1)
	})(window, document);
</script>

<script type="text/javascript">
	$(function(){
		$('.modifyBtn').click(function() {
			var no = $(this).attr("value");
			var type = $(this).text();
			var type1 = $('#deleteBtn'+no).text();
			if(type=='수정') {
				if(type1=='취소') {
					$('#delpas'+no).hide();
					$('#deleteBtn'+no).text("삭제");
				}
				$('#up'+no).show();
				$(this).text("취소");
			} else {
				$('#up'+no).hide();
				$(this).text("수정");
			}
		});
	});
	$(function(){
		$('.deleteBtn').click(function() {
			var no = $(this).attr("value");
			var type = $(this).text();
			var type1 = $('#modifyBtn'+no).text();
			if(type=='삭제') {
				if(type1=='취소') {
					$('#up'+no).hide();
					$('#modifyBtn'+no).text("수정");
				}
				$('#delpas'+no).show();
				$(this).text("취소");
			} else {
				$('#delpas'+no).hide();
				$(this).text("삭제");
			}
		});
	});
</script>


<style type="text/css">
@font-face {
   font-family: 'NanumBarunGothic';
   src: url(font/NanumBarunGothic.ttf) format('truetype');
}
body {
	font-family: NanumBarunGothic !important;
}
.tt-video-post-wrapper {
	background-size: 100% 100%;
	padding: 0 !important;
}
.tt-video-post-wrapper .fff {
	background-color: rgba(30,30,30, 0.85);
	height: 570px;
}
.tt-nav-tab .active, .tt-tabs-content .active {
	background-color: white !important;
}
.tt-blog-user .tt-blog-user-content {
	font-size: 18px !important;
	color: rgb(140,140,140) !important;
}
.seung95 {
	display: inline;
}
.videolistBtn:hover {
	background-color: rgb(186,31,31) !important;
	color: rgb(240,240,240) !important;
}
</style>


</head>
<body
	class="post-template-default single single-post postid-100 single-format-video custom-background  right_sidebar full-page wpb-js-composer js-comp-ver-5.0.1 vc_responsive">
	<div id="wrapper">
		<div id="content-wrapper">

			<!-- 동영상재생 -->
			<div class="tt-video-post-wrapper" style="background-image: url(https://img.youtube.com/vi/${vo.youtubekey}/mqdefault.jpg);">
				<div class="fff">
					<div class="container">
						<div class="row">
							<div class="col-md-8 col-md-offset-2" style="margin-left: 15%; margin-top: 4%;">
								<div class="tt-fluid">
									<div class="tt-fluid-inner">
										<iframe class="tt-fluid-inner-iframe tt-iframe" width="960"
											height="720"
											data-lazy-src="https://www.youtube.com/embed/${vo.youtubekey}"
											frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /동영상재생 -->
			
			
			<div class="container">
				<div class="empty-space marg-lg-b60 marg-sm-b40 marg-xs-b30"></div>
				<div class="row">
					<div class="col-md-8">
						
						<!-- 동영상 설명 -->
						<article
							class="post-100 post type-post status-publish format-video has-post-thumbnail hentry category-fashion tag-classic tag-fashion post_format-post-format-video">
							<!-- <div class="empty-space marg-lg-b30"></div> -->
							<div class="tt-blog-category post-single">
								<a class="c-btn type-3 color-3" style="font-family: NanumBarunGothic !important;">${vo.sortname }</a>
								<a class="c-btn type-3 color-3 videolistBtn" href="videolist.do"
									style="float: right; margin-right: 10px; background-color: rgb(240,240,240); color: rgb(186,31,31); 
											width: 130px; height: 30px; margin-bottom: 0 !important; text-align: center; font-size: 13px;
											line-height: 23px; border: 1px rgb(186,31,31) solid; font-weight: bold;font-family: NanumBarunGothic !important;">
									목록으로 돌아가기
								</a>
							</div>
							<div class="empty-space marg-lg-b20"></div>
							<h1 class="c-h1" style="font-family: NanumBarunGothic !important; font-weight: normal !important;">${vo.title }</h1>
							<div class="empty-space marg-lg-b5"></div>

							<div class="tt-blog-user clearfix">
								<div class="tt-blog-user-content">
									<span style="font-family: NanumBarunGothic !important;"><fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd (E)"/></span>
									<span style="color: rgb(186,31,31); font-family: NanumBarunGothic !important;">&nbsp;&nbsp;${vo.hit } views</span>
								</div>
							</div>
							<div class="empty-space marg-lg-b10"></div>
							<div class="empty-space marg-lg-b20 marg-sm-b20"></div>
							<div class="simple-text size-4 title-droid margin-big">
								<div class="vc_row wpb_row vc_row-fluid">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<pre style="word-wrap: break-word;white-space: pre-wrap;white-space: -moz-pre-wrap;white-space: -pre-wrap;
													white-space: -o-pre-wrap;word-break:break-all;background-color: #ffffff; font-family: NanumBarunGothic !important;">${vo.content }</pre>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="empty-space marg-lg-b40 marg-sm-b30"></div>
							<!-- <span class="tt-tag-title">Tags:</span>
							<ul class="tt-tags">
								<li><a
									href="http://themebubble.com/demo/videoly/tag/classic/"
									rel="tag">Classic</a></li>
								<li><a
									href="http://themebubble.com/demo/videoly/tag/fashion/"
									rel="tag">Fashion</a></li>
							</ul> -->
						</article>
						<div class="empty-space marg-lg-b50 marg-sm-b30"></div>
						<div class="tt-devider"></div>
						<div class="empty-space marg-lg-b60 marg-sm-b50 marg-xs-b30"></div>

						<!-- 이전,다음 동영상 -->
						<div class="row">
							<div class="col-sm-6">
								<div class="tt-blog-nav left">
									<div class="tt-blog-nav-label" style="font-family: NanumBarunGothic !important;">이전 동영상</div>
									<a class="tt-blog-nav-title"
										href="http://themebubble.com/demo/videoly/fashion-week-entry-created-buzz/"
										rel="prev" style="font-family: NanumBarunGothic !important;">Fashion Week Entry Created Buzz</a>
								</div>
								<div class="empty-space marg-xs-b20"></div>
							</div>
							<div class="col-sm-6">
								<div class="tt-blog-nav right">
									<div class="tt-blog-nav-label" style="font-family: NanumBarunGothic !important;">다음 동영상</div>
									<a class="tt-blog-nav-title"
										href="http://themebubble.com/demo/videoly/9-best-dessert-recipes/"
										rel="next" style="font-family: NanumBarunGothic !important;">Mozzarella Chicken Roll Recipe</a>
								</div>
							</div>
						</div>
						<!-- /이전,다음 동영상 -->
						
						<div class="empty-space marg-lg-b55 marg-sm-b50 marg-xs-b30"></div>
						
						
						<!-- <div class="empty-space marg-lg-b40 marg-sm-b30"></div> -->
						<div class="tt-devider"></div>
						<div class="empty-space marg-lg-b55 marg-sm-b50 marg-xs-b30"></div>
						
						<!-- 댓글 -->
						<section class="coment-item">
						
							<h4 class="tt-title-block-2 size-2 color-2" style="font-family: NanumBarunGothic !important;">댓글(${vo.count })</h4>
							<div class="empty-space marg-lg-b20"></div>
							<form method="post" action="videoreplyinsert.do">
								<input type="hidden" name="bno" value="${vo.no }">
								name : <input type="text" name="name" size="10" style="height: 25px; background-color: #edf3fc;"> &nbsp;&nbsp; 
								password : <input type="password" name="pwd" size="10" style="height: 25px; background-color: #edf3fc;">
								<textarea rows="2" name="msg" style="margin-top: 10px; width: 85%; font-size: 16px;"></textarea>
								<input class="btn btn-md btn-primary" type="submit" style="margin-bottom: 45px; margin-left: 10px; 
											padding: 15px 10px 15px 10px;" value="댓글달기">
							</form>
										
							<ol class="tt-comment commentlist">
								<c:forEach var="vo" items="${relist }">
								<li class="comment byuser comment-author-admin bypostauthor even thread-even depth-1 comment-list"
									id="comment-2">
									<div class="tt-comment-container clearfix">
										<a class="tt-comment-avatar"> 
											<img alt='' src='images/user_1.png' class='tt-comment-form-ava avatar-40 photo' height='40' width='40' />
										</a>
										<div class="tt-comment-info" style="padding-top: 0px !important;">
											<div class="tt-comment-label">
												<span><a class="tt-comment-name" style="font-family: NanumBarunGothic !important;">${vo.name }</a></span>
												<span style="font-family: NanumBarunGothic !important;"><fmt:formatDate value="${vo.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/></span>
												<button class="btn btn-xs btn-default modifyBtn" id="modifyBtn${vo.no }" value="${vo.no }" style="font-family: NanumBarunGothic !important;">수정</button>
												<button class="btn btn-xs btn-default deleteBtn" id="deleteBtn${vo.no }" value="${vo.no }" style="font-family: NanumBarunGothic !important;">삭제</button>
												<form method="post" action="videoreplydelete.do" class="seung95">
													<input type="hidden" name="bno" value="${vo.bno }">
													<input type="hidden" name="no" value="${vo.no }">
													<span id="delpas${vo.no }" style="display: none; font-family: NanumBarunGothic !important;">&nbsp;&nbsp;password : 
														<input type="password" name="pwd" size="10" style="height: 20px; background-color: #ffe5eb; vertical-align: middle;">
														<input type="submit" class="btn btn-xs btn-danger" value="삭제">
													</span>
													
												</form>
												
											</div>
											<div class="simple-text font-poppins" style="margin-bottom: 15px;">
												<p>${vo.msg }</p>
											</div>
											<div id="up${vo.no }" style="display: none;">
												<form method="post" action="videoreplyupdate.do">
													<input type="hidden" name="bno" value="${vo.bno }">
													<input type="hidden" name="no" value="${vo.no }">
													name : <input type="text" name="name" size="10" value="${vo.name }" readonly style="height: 25px; background-color: #e2e2e2;"> &nbsp;&nbsp; 
													password : <input type="password" name="pwd" size="10" style="height: 25px; background-color: #edf3fc;">
													<textarea rows="2" cols="50" name="msg" style="width: 70%; font-size: 15px;">${vo.msg }</textarea>
													<input type="submit" class="btn btn-sm btn-info" style="margin-bottom: 30px;
															 margin-left: 10px; padding: 9px 12px 9px 12px; font-size: 15px;" value="수정">
												</form>
											</div>
										</div>
									</div>
								</li>
								<div class="empty-space marg-lg-b20"></div>
								</c:forEach>
							</ol>
							<div class="empty-space marg-lg-b60 marg-sm-b50 marg-xs-b30"></div>
						
						</section>
						<!-- /댓글 -->
					</div>

					<!-- 오른쪽 동영상목록 -->
					<div class="col-md-4">
						<div class="sidebar pleft75">
							<div class="empty-space marg-sm-b60"></div>
							<div id="tabbed-posts-3"
								class="sidebar-item widget widget_posts_tabbed_entries">
								<div class="tt-tab-wrapper type-1 clearfix">
									<div class="tt-tab-nav-wrapper">
										<div class="tt-nav-tab">
											<div class="tt-nav-tab-item active" style="font-family: NanumBarunGothic !important;">
												<i class="fa fa-bolt" aria-hidden="true"></i>관련 동영상
											</div>
											<div class="tt-nav-tab-item" style="font-family: NanumBarunGothic !important;">
												<i class="fa fa-heart" aria-hidden="true"></i>최근 시청한 동영상
											</div>
										</div>
									</div>
									<div class="tt-tabs-content clearfix">
									
										<!-- 관련동영상 -->
										<div class="tt-tab-info active">
											<ul class="tt-post-list">
												<c:forEach var="relatedvo" items="${relatedlist }">
												<li>
													<div
														class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
														<a class="tt-post-img custom-hover"
															href="">
															<div class="tt-video-attributes">
																<span class="tt-post-length">${relatedvo.length }</span>
															</div> <img width="104" height="63"
															src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
															class="img-responsive wp-post-image" />
														</a>
														<div class="tt-post-info">
															<a class="tt-post-title c-h6" style="font-family: NanumBarunGothic !important; font-weight: normal !important;"
																href="">${relatedvo.title }</a>
															<div class="tt-post-cat">
																<a rel="category tag" style="font-family: NanumBarunGothic !important;">Movies</a>
															</div>
														</div>
													</div>
												</li>
												</c:forEach>
												
											</ul>
										</div>
										<!-- /관련동영상 -->
										
										
										<!-- 최근 시청한 동영상 -->
										<div class="tt-tab-info">
											<ul class="tt-post-list">
												<li>
													<div
														class="tt-post type-7 clearfix post-328 post type-post status-publish format-video has-post-thumbnail hentry category-movies tag-animated tag-movie post_format-post-format-video">
														<a class="tt-post-img custom-hover"
															href="">
															<div class="tt-video-attributes">
																<span class="tt-post-length">41:27</span>
															</div> <img width="104" height="63"
															src="http://themebubble.com/demo/videoly/wp-content/uploads/2017/03/Untitled-2-104x63.jpg"
															class="img-responsive wp-post-image" />
														</a>
														<div class="tt-post-info">
															<a class="tt-post-title c-h6" style="font-family: NanumBarunGothic !important; font-weight: normal !important;"
																href="">The Legends of Abra Kedabra</a>
															<div class="tt-post-cat">
																<a rel="category tag" style="font-family: NanumBarunGothic !important;">Movies</a>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
										<!-- /최근 시청한 동영상 -->
										
									</div>
								</div>
							</div>
							<div class="empty-space marg-lg-b30"></div>
						</div>
					</div>
					<!-- /오른쪽 동영상목록 -->

				</div>
				<div class="empty-space marg-lg-b80 marg-sm-b50 marg-xs-b30"></div>
			</div>
		</div>
	</div>
	
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/global.js?ver=1.0'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/image.loaded.min.js?ver=1.0'></script>
	
</body>
</html>
