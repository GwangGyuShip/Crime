<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Insert title here</title>
<style type="text/css">
.tab-pane { color:black;}

.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: white;
  font-weight: bolder;
  cursor: default;
  background-color: #1c81d9;
  opacity:0.8;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
}
.nav-tabs a{
   color:black;
}
</style>
</head>
<body>
	<div class="container">
	    <div class="row">
	    	<div class="data-content" style="width: 95%; margin: 0px auto; background-color: white; padding: 20px;">
			 <ul class="nav nav-tabs" ><br>
				<li class="active"><a href="#tab1" id="1" data-toggle="tab" >2016</a></li>
				<li><a href="#tab2" id="2" data-toggle="tab">2015</a></li>
				<li><a href="#tab3" id="3" data-toggle="tab">2014</a></li>
				<li><a href="#tab3" id="4" data-toggle="tab">2013</a></li>
				<li><a href="#tab3" id="5" data-toggle="tab">2012</a></li>
				<li><a href="#tab3" id="6" data-toggle="tab">2011</a></li>
				<li><a href="#tab3" id="7" data-toggle="tab">2010</a></li>
			</ul>
			<div class="tab-content" style="border: 1px solid #eee">
				<div class="tab-pane active" id="tab1"> 
					<table class="table table-hover">
						<tr class="info">
							<th class="text-center">지역</th>
							<th class="text-center">강간</th>
							<th class="text-center">강도</th>
							<th class="text-center">살인</th>
							<th class="text-center">절도</th>
							<th class="text-center">폭력</th>
							<th class="text-center">cctv</th>
						</tr>
						<c:forEach var="vo" items="${list }">
							<tr>
								<td class="text-center">${vo.c_gu }</td>
								<td class="text-center">${vo.ganggan_c }</td>
								<td class="text-center">${vo.gangdo_c }</td>
								<td class="text-center">${vo.salin_c }</td>
								<td class="text-center">${vo.juldo_c }</td>
								<td class="text-center">${vo.pok_c }</td>
								<td class="text-center">${vo.c_cam }</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				
				<div class="tab-pane" id="tab2">
					
				</div>
				
				<div class="tab-pane" id="tab3"> 
					
				</div>
			</div><!-- 선 -->
			</div>
	    </div>
    </div>
</body>
</html>