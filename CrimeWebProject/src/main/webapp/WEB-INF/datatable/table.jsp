<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#tabs" ).tabs();
  } );
 </script>
<style type="text/css">
table {
    width: 100%;
    border: 1px solid #444444;
  }
</style> 
</head>
<body>
	<div class="container-fluid">
		<div id="tabs">
		  <ul>
		    <li><a href="#tabs-1">2010</a></li>
		    <li><a href="#tabs-2">2011</a></li>
		    <li><a href="#tabs-3">2012</a></li>
		    <li><a href="#tabs-4">2013</a></li>
		    <li><a href="#tabs-5">2014</a></li>
		    <li><a href="#tabs-6">2015</a></li>
		    <li><a href="#tabs-7">2016</a></li>
		  </ul>
		  <center><h1 style="text-shadow:  2px 2px rgba(0, 0, 0, 0.2);">서울 년도별 현황</h1></center>
	    <div id="tabs-1">
		  <table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터데이터데이터</td>
		        </tr>
		    </c:forEach>
		    </table>
		  </div>
		  <div id="tabs-2">
			<table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터데이터</td>
		        </tr>
		    </c:forEach>
		    </table>  
		  </div>
		  <div id="tabs-3">
			<table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터</td>
		        </tr>
		    </c:forEach>
		    </table>     
		  </div>
		  <div id="tabs-4">
			<table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터</td>
		        </tr>
		    </c:forEach>
		    </table>     
		  </div>
		  <div id="tabs-5">
			<table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터</td>
		        </tr>
		    </c:forEach>
		    </table>     
		  </div>
		  <div id="tabs-6">
			<table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터</td>
		        </tr>
		    </c:forEach>
		    </table>     
		  </div>
		  <div id="tabs-7">
			<table>
				<tr>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>번호</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; font-weight: bold;"><center>지역(구)</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>살인</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강도</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>강간</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>폭력</center></th>
			       <th width="150" style="background-color: #996666; font-size: 20px; color: blue;"><center>절도</center></th>
			       <td style="background-color: #996666;"><center><img src="image/cctv.jpg"></center></td>
			    </tr>
		    <c:forEach var="i" begin="1" end="25">
		        <tr>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">${i }</td>
		           <td width="150" align="center" style="background-color: #f0fff0; font-weight: bold;">데이터데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #eee8aa; color: blue;">데이터데이터데이터데이터</td>
		           <td width="150" align="center" style="background-color: #f0fff0;">데이터</td>
		        </tr>
		    </c:forEach>
		    </table>     
		  </div>
		</div>
	</div>
</body>
</html>