<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function() {
    var myTable = $('#myTable').DataTable();
  
    $('#myTable tbody').on( 'click', 'tr', function () {
       $(this).toggleClass('selected');
    });
  });
</script>

</head>
<body>
	
		
		<center>
			<h2>${c_year } 년도 범죄 발생률</h2>
		</center>
		<table id="myTable" class="table" cellspacing="0" width="100%">
	        <thead>
	            <tr class="info">
		            <th class="text-center">지역</th>
					<th class="text-center">강간</th>
					<th class="text-center">강도</th>
					<th class="text-center">살인</th>
					<th class="text-center">절도</th>
					<th class="text-center">폭력</th>
					<th class="text-center">cctv</th>
	            </tr>
	        </thead>
	        <tfoot>
	           	<tr class="info">
	                <th class="text-center">지역</th>
					<th class="text-center">강간</th>
					<th class="text-center">강도</th>
					<th class="text-center">살인</th>
					<th class="text-center">절도</th>
					<th class="text-center">폭력</th>
					<th class="text-center">cctv</th>
	            </tr>
	        </tfoot>
	        <tbody>
	            <c:forEach var="vo" items="${list }" varStatus="i">
					<tr>
						<td class="text-center">${vo.c_gu }</td>
						<td class="text-center">
						${vo.ganggan_c }
						</td>
						<td class="text-center">${vo.gangdo_c }</td>
						<td class="text-center">${vo.salin_c }</td>
						<td class="text-center">${vo.juldo_c }</td>
						<td class="text-center">${vo.pok_c }</td>
						<td class="text-center">${vo.c_cam }</td>
					</tr>
				</c:forEach>
	        </tbody>
	    </table>
</body>
</html>