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
<link rel='stylesheet' id='videoly-main-style-css' href='http://themebubble.com/demo/videoly/wp-content/themes/videoly/css/style.css?ver=1.0' type='text/css' media='all' />
	<link rel="stylesheet" type="text/css" href="style_video.css" />
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

<style type="text/css">
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
							<div class="empty-space marg-lg-b30"></div>
							<div class="tt-blog-category post-single">
								<a class="c-btn type-3 color-3"
									href="http://themebubble.com/demo/videoly/category/fashion/">${vo.sortname }</a>
							</div>
							<div class="empty-space marg-lg-b10"></div>
							<h1 class="c-h1">${vo.title }</h1>
							<div class="empty-space marg-lg-b5"></div>

							<div class="tt-blog-user clearfix">
								<div class="tt-blog-user-content">
									<span><fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd (E)"/></span>
								</div>
							</div>
							<div class="empty-space marg-lg-b10"></div>
							<div class="empty-space marg-lg-b20 marg-sm-b20"></div>
							<div class="simple-text size-4 title-droid margin-big">
								<div class="vc_row wpb_row vc_row-fluid">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<!-- <div class="simple-text size-3 color-2">
													<p>
														We look our best in <strong>subdued</strong> colors,
														sophisticated cuts, and a general air of sleek
														understatement. When I was young, I lived like an old
														woman, and when I got old, I had to live like a young
														person.
													</p>
												</div>
												<div class="empty-space marg-lg-b10"></div>
												<p>
													Men have got more of a discerning eye. They appreciate cut
													and details, things that aren&#8217;t so obvious. They like
													things that have cachet and gentlemanliness. Elegance is
													not the prerogative of those who have just escaped from
													adolescence, but of those who have already taken possession
													of their future. My shows are about the complete woman who
													swallows it all. It&#8217;s a question of survival. We look
													our best in <a href="#">subdued</a> colors, sophisticated
													cuts, and a general air sleek understatement. There is
													always an emotional element to anything that you make.
												</p> -->
												<p>
													<pre>${vo.content }</pre>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="empty-space marg-lg-b40 marg-sm-b30"></div>
							<span class="tt-tag-title">Tags:</span>
							<ul class="tt-tags">
								<li><a
									href="http://themebubble.com/demo/videoly/tag/classic/"
									rel="tag">Classic</a></li>
								<li><a
									href="http://themebubble.com/demo/videoly/tag/fashion/"
									rel="tag">Fashion</a></li>
							</ul>
						</article>
						<div class="empty-space marg-lg-b50 marg-sm-b30"></div>
						<div class="tt-devider"></div>
						<div class="empty-space marg-lg-b60 marg-sm-b50 marg-xs-b30"></div>

						<!-- 이전,다음 동영상 -->
						<div class="row">
							<div class="col-sm-6">
								<div class="tt-blog-nav left">
									<div class="tt-blog-nav-label">이전 동영상</div>
									<a class="tt-blog-nav-title"
										href="http://themebubble.com/demo/videoly/fashion-week-entry-created-buzz/"
										rel="prev">Fashion Week Entry Created Buzz</a>
								</div>
								<div class="empty-space marg-xs-b20"></div>
							</div>
							<div class="col-sm-6">
								<div class="tt-blog-nav right">
									<div class="tt-blog-nav-label">다음 동영상</div>
									<a class="tt-blog-nav-title"
										href="http://themebubble.com/demo/videoly/9-best-dessert-recipes/"
										rel="next">Mozzarella Chicken Roll Recipe</a>
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

							<h4 class="tt-title-block-2 size-2 color-2">댓글(2)</h4>
							<textarea rows="3" cols="105" style="margin-top: 10px;">댓글을 입력하세요</textarea>
							<input type="button" value="확인" width="80px" height="50px">
							<div class="empty-space marg-lg-b20"></div>
							<ol class="tt-comment commentlist">
								<li class="comment byuser comment-author-admin bypostauthor even thread-even depth-1 comment-list"
									id="comment-2">
									<div class="tt-comment-container clearfix">
										<a class="tt-comment-avatar" href="#"> <img alt=''
											src='images/user_1.png'
											class='tt-comment-form-ava avatar-40 photo' height='40'
											width='40' />
										</a>
										<div class="tt-comment-info">
											<div class="tt-comment-label">
												<span><a href="#" class="tt-comment-name">문승재</a></span> <span>March 2, 2017</span>
											</div>
											<div class="simple-text font-poppins">
												<p>지은누나 예뻐요</p>
											</div>
										</div>
									</div>
								</li>
								<li class="comment byuser comment-author-admin bypostauthor even thread-even depth-1 comment-list"
									id="comment-2">
									<div class="tt-comment-container clearfix">
										<a class="tt-comment-avatar" href="#"> <img alt=''
											src='images/user_1.png'
											class='tt-comment-form-ava avatar-40 photo' height='40'
											width='40' />
										</a>
										<div class="tt-comment-info">
											<div class="tt-comment-label">
												<span><a href="#" class="tt-comment-name">장연식</a></span> <span>March 2, 2017</span>
											</div>
											<div class="simple-text font-poppins">
												<p>지은누나 여신이에요</p>
											</div>
										</div>
									</div>
								</li>
							</ol>
							<div class="empty-space marg-lg-b60 marg-sm-b50 marg-xs-b30"></div>
							<div class="tt-devider"></div>
							<div class="empty-space marg-lg-b55 marg-sm-b50 marg-xs-b30"></div>


							<div class="tt-comment-form tt-comment-form clearfix"></div>

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
											<div class="tt-nav-tab-item active">
												<i class="fa fa-bolt" aria-hidden="true"></i>관련 동영상
											</div>
											<div class="tt-nav-tab-item">
												<i class="fa fa-heart" aria-hidden="true"></i>인기 동영상
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
							<div class="empty-space marg-lg-b30"></div>
						</div>
					</div>
					<!-- /오른쪽 동영상목록 -->

				</div>
				<div class="empty-space marg-lg-b80 marg-sm-b50 marg-xs-b30"></div>
			</div>
		</div>
	</div>
	<!-- <script type='text/javascript'>
/* <![CDATA[ */
var wpcf7 = {"apiSettings":{"root":"http:\/\/themebubble.com\/demo\/videoly\/wp-json\/","namespace":"contact-form-7\/v1"},"recaptcha":{"messages":{"empty":"Please verify that you are not a robot."}},"cached":"1"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/contact-form-7/includes/js/scripts.js?ver=4.8'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-includes/js/comment-reply.min.js?ver=4.8.4'></script> -->
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/global.js?ver=1.0'></script>
	<!-- <script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/match.height.min.js?ver=1.0'></script> -->
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/image.loaded.min.js?ver=1.0'></script>
	<!-- <script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/jquery.appear.js?ver=1.0'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/js_composer/assets/js/dist/js_composer_front.min.js?ver=5.0.1'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/themes/videoly/js/idangerous.swiper.min.js?ver=1.0'></script>
	<script type='text/javascript'>
/* <![CDATA[ */
var newsletter = {"messages":{"email_error":"The email is not correct","name_error":"The name is not correct","surname_error":"The last name is not correct","privacy_error":"You must accept the privacy statement"},"profile_max":"20"};
/* ]]> */
</script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/newsletter/subscription/validate.js?ver=4.9.8'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-content/plugins/demo-switcher/assets/js/switcher.js?ver=1.0.0'></script>
	<script type='text/javascript'
		src='http://themebubble.com/demo/videoly/wp-includes/js/wp-embed.min.js?ver=4.8.4'></script> -->
	
</body>
</html>
