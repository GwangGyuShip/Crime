<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="col-sm-12" style="width: 100%; height: 100%; background-color:white; box-shadow:0 2px 10px rgba(0, 0, 0, 0.8);">
                     <h3 style="padding-left:15px; margin-bottom:40px;"><b>서울 은평구</b></h3>
            					<div class="col-sm-6">
                            	<table class="table table-hover"> <!--첫번째 테이블-->
                            		<tr>
	                            		<th width=50% class="text-center" style="font-size:20px;  border-top:2px solid black; border-bottom:2px solid black">항목</th>
	                            		<th width=50% class="text-center" style="font-size:20px; border-top:2px solid black; border-bottom:2px solid black">데이터</th>
                            		</tr>
                            		
	                            		<tr height="60px">
			                            	<td width=50% style="vertical-align: middle;" class="text-center">총합</td>
			                            	<td width=50% style="vertical-align: middle;" class="text-center">${total }</td>
		                            	</tr>
		                            	<tr height="60px">
			                            	<td width=50% style="vertical-align: middle;" class="text-center">평균</td>
			                            	<td width=50% style="vertical-align: middle;" class="text-center">${average }</td>
		                            	</tr>
                            		
                            		<c:forEach var="vo" items="${clist}" varStatus="status">
                            			<c:if test="${status.index < 2}">
		                            		<tr height="60px">
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_name }</td>
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_count}</td>
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
			                            		<td width=50% style="vertical-align: middle;" class="text-center">${vo.c_count }</td>
		                            		</tr>
                            			</c:if>	
                            		</c:forEach>
                            		<tr height="60px">
	                            		<td width=50% style="vertical-align: middle;" class="text-center">CCTV 대수</td>
	                            		<td width=50% style="vertical-align: middle;" class="text-center"></td>
                            		</tr>                            		
                            		</table> 
                            		</div>              
                            </div> <!-- 상세정보 끝  -->
</body>
</html>