<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

                     <h3 style="padding-left:15px; margin-bottom:40px;"><b>서울 ${c_gu }</b></h3>
            					<div class="col-sm-6">
                            	<table class="table table-hover"> <!--첫번째 테이블-->
                            		<tr>
	                            		<th width=50% class="text-center" style="font-size:20px;  border-top:2px solid black; border-bottom:2px solid black">항목</th>
	                            		<th width=50% class="text-center" style="font-size:20px; border-top:2px solid black; border-bottom:2px solid black">데이터</th>
                            		</tr>
                            		
	                            		<tr height="60px">
			                            	<td width=50% style="vertical-align: middle;" class="text-center">총합</td>
			                            	<td width=50% style="vertical-align: middle;" class="text-center">${tvo.total }건</td>
		                            	</tr>
		                            	<tr height="60px">
			                            	<td width=50% style="vertical-align: middle;" class="text-center">평균</td>
			                            	<td width=50% style="vertical-align: middle;" class="text-center">${tvo.average }건</td>
		                            	</tr>
                            		
                            		<c:forEach var="vo" items="${clist}" varStatus="status">
                            			<c:if test="${status.index < 2}">
		                            		<tr height="60px">
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_name }</td>
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_count}건</td>
		                            		</tr>
	                            		</c:if>
                            		</c:forEach>
                            		 </table>
                 				</div>
                            		 	
                            		<div class="col-sm-6"> 	
                            		<table class="table table-hover"> <!--두번째 테이블-->
                            		<tr>
	                            		<th width=50% class="text-center" style="font-size:20px; border-top:2px solid black; border-bottom:2px solid black">항목</th>
	                            		<th width=50% class="text-center" style="font-size:20px; border-top:2px solid black; border-bottom:2px solid black">데이터</th>
	                            		
                            		</tr>
                            		<c:forEach var="vo" items="${clist }" varStatus="status">
                            			<c:if test="${status.index > 1 }">
		                            		<tr height="60px">
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_name }</td>
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_count }건</td>
		                            		</tr>
                            			</c:if>	
                            		</c:forEach>
                            		<tr height="60px">
	                            		<td width=50% style="vertical-align: middle;" class="text-center">CCTV 대수</td>
	                            		<td width=50% style="vertical-align: middle;" class="text-center">${c_count }대</td>
                            		</tr>                            		
                            		</table> 
                            		</div>   
                            		<div class="col-sm-12"><h5><b>※2016년 기준 자료입니다.</b></h5></div>           
</body>
</html>