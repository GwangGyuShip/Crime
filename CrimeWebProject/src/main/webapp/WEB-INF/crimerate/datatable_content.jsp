<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<style>
    .wrapper {
        cursor: help;
        width: 170px;
        -webkit-transform: translateZ(0); /* webkit flicker fix */
        -webkit-font-smoothing: antialiased; /* webkit text rendering fix */
        }

        .wrapper .tooltip {
        background: #CEF6F5;
        bottom: 100%;
        color: black;
        display: block;
        left: 0px;
        margin-bottom: 5px;
        opacity: 0;
        padding: 20px;
        pointer-events: none;
        position: absolute;
        width: 100%;
        -webkit-transform: translateY(10px);
          -moz-transform: translateY(10px);
          -ms-transform: translateY(10px);
           -o-transform: translateY(10px);
            transform: translateY(10px);
        -webkit-transition: all .25s ease-out;
          -moz-transition: all .25s ease-out;
          -ms-transition: all .25s ease-out;
           -o-transition: all .25s ease-out;
            transition: all .25s ease-out;
        -webkit-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
          -moz-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
          -ms-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
           -o-box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
            box-shadow: 2px 2px 6px rgba(0, 0, 0, 0.28);
        }

        /* This bridges the gap so you can mouse into the tooltip without it disappearing */
        .wrapper .tooltip:before {
        bottom: -20px;
        content: " ";
        display: block;
        height: 20px;
        left: 0;
        position: absolute;
        width: 100%;
        }

        /* CSS Triangles - see Trevor's post */
        .wrapper .tooltip:after {
        border-left: solid transparent 10px;
        border-right: solid transparent 10px;
        border-top: solid #CEF6F5 10px;
        bottom: -10px;
        content: " ";
        height: 0;
        left: 50%;
        margin-left: -13px;
        position: absolute;
        width: 0;
        }

        .wrapper:hover .tooltip {
        opacity: 1;
        pointer-events: auto;
        -webkit-transform: translateY(0px);
          -moz-transform: translateY(0px);
          -ms-transform: translateY(0px);
           -o-transform: translateY(0px);
            transform: translateY(0px);
        }
 </style>
</head>
<body>
	
		
		<center>
			<h1>${c_year } 년도 범죄 발생율</h1>
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
						<td class="text-center wrapper">${vo.ganggan_c }
						 <div class="tooltip">
						 	<table class="table">
					              <tr style="font-size : 10px;">
					              	<td> 발생수 : ${vo.ganggan_c }</td>
					              </tr>
					              <tr>
					              	<td> 검거수 : ${vo.g_ganggan_c }</td>
					              </tr>
					              <tr>
					              	<td> 검거율 : 
					              		<fmt:formatNumber value="${vo.g_ganggan_c/vo.ganggan_c*100 }%" pattern=".0"/>
					              	</td>
					              </tr>
					         </table>
						 </div>
						 
						 
						 </td>
						<td class="text-center">${vo.gangdo_c } / ${vo.g_gangdo_c }</td>
						<td class="text-center">${vo.salin_c } / ${vo.g_salin_c }</td>
						<td class="text-center">${vo.juldo_c } / ${vo.g_juldo_c }</td>
						<td class="text-center">${vo.pok_c } / ${vo.g_pok_c }</td>
						<td class="text-center">${vo.c_cam }</td>
					</tr>
				</c:forEach>
	        </tbody>
	    </table>
</body>
</html>