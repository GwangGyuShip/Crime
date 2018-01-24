<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="../js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	var i=0;
	if(i==0){
		$('.newsContainer').click(function(){
			
			$(this).animate({ height: "900px" }, 500);	

		});	
		i=1;
	}else{
		$('.newsContainer').click(function(){
			
			$(this).animate({ height: "270px"}, 500);	

		});	
		i=0;
	}
	
	/* $(".nc").on("click", function(){
		$(this).animate({ height: "1000px"}, 500);
		
	}); */
	
	$('.searchBtn1').click(function(){
		
			$(this).toggleClass("searchBtn2");
		
	});
	$('.searchBtn2').click(function(){
		
		$(this).toggleClass("searchBtn1");
});
	
});
</script>
<style type="text/css">
.searchBtn1{
	background-color:#0078FF; 
	border-radius:10px; 
	width: 100px; 
	height: 50px; 
	color:#dcdcdc;
	font-size: 30px;
	font-weight:bold; 
	text-align: center; 
	vertical-align: center;
	margin: 15px 0 0 0;
	}
.searchBtn1:hover{
	opacity: 0.7;
	cursor: pointer;
}
.searchBtn1:visited{
	background-color: black;	
}
.searchBtn2{
	background-color:black; 
	border-radius:10px; 
	width: 100px; 
	height: 50px; 
	color:#dcdcdc;
	font-size: 30px;
	font-weight:bold; 
	text-align: center; 
	vertical-align: center;
	margin: 15px 0 0 0;
	}
.searchBtn2:hover{
	opacity: 0.7;
	cursor: pointer;
}
.searchBtn2:visited{
	background-color: black;	
}

.floating-menu { 
  position: fixed; 
  left: 220px; 
  top: 8%; 
  z-index: 100;
  width: 128px; 
  margin: 0 0 0 15px; 
}

.Graph1 { 
  position: fixed;
  right: 20px; 
  top: 25%; 
  z-index: 100;
  margin: 0 0 0 0; 
  width: 22%; 
  height: 270px; 
  background-color: blue;
}

.Graph2 { 
  position: fixed;
  right: 20px; 
  top: 56%; 
  z-index: 100;
  margin: 50px 0 0 0; 
  width: 22%; 
  height: 270px; 
  background-color: red;
}

.newsContainer{
	background-color: #FFF0F5; 
	width: 98%;	
	height: 270px; 
	border-radius:10px; 
	margin: 30px 0 0 10px;
	overflow:hidden; 
	height:auto;"
}
.newsContainer:hover{
	cursor: pointer;
}

.newsPic {
	width: 23%; 
	height: 200px; 
	vertical-align:center;
	background-color: green;
	margin: 0 0 0 35px; 
	top:100px;
	float: left;
	border: 1px solid black;	"
}

.newsContent {
	width: 68%; 
	height: 150px;
	vertical-align:
	center;
	float: left; 
	border: 1px solid black; 
	margin-left:20px;"
}
</style>
</head>
<body>
	<div class="header">
		<div>
			<img src="images/news_head.png" style="width: 4.5%; height: auto; margin: 30px 15px 0 15px; float: left;">
		</div>
		<div style="margin: 25px 0 0 0; float: left;"><strong style="font-size: 45px; font-weight: bold;">뉴스</strong></div>
		<div style="height:100px;"></div>
		
    
	</div>
	<div id="contents">
			<div class="floating-menu">
				<div style="height:100px;"></div>
				<div class="searchBtn1" >전체</div>
				<div class="searchBtn1" >살인</div>
				<div class="searchBtn1" >폭행</div>
				<div class="searchBtn1" >절도</div>
				<div class="searchBtn1" >성범죄</div>
				<div class="searchBtn1" >방화</div>
				<div class="searchBtn1" style="font-size: 20px; padding-top: 5px;">경제사범</div>
				<div class="searchBtn1" >사기</div>
				<div class="searchBtn1" >협박</div>
				
			</div>
			
			<table class="table" style="border: 3px solid red; ">
				<tr>
					<td width="8%" style="border: 3px solid red; margin: 0 0 0 50px;">	
					</td>
					<td width="61%" style="border: 3px solid red;">
						<c:forEach var="i" begin="1" end="8">
						<div class="newsContainer"  >
							
							<div style="height: 30px;"></div>
							
							<div class="newsPic" ></div>
							
							<div class="newsContent" >
							</div>
							
						</div>
						
						</c:forEach>
					</td>
					<td width="25%" style="border: 3px solid red;">
						<div class="Graph1"></div>
						<div class="Graph2"></div>
					</td>
				</tr>
			</table>
			
		  		<div style="margin-left: 20%;">
		   			 <ul class="pagination pagination-lg"> 
		   			 <li style="font-weight: bold; font-size: 30px;"><a href="#"> < </span></a>
		   			 </li>
		   			 &nbsp;&nbsp;
		   			 <c:forEach var="j" begin="1" end="10">
		        	<li><a href="#" >${j }</a></li>
		    		 </c:forEach>
		    		 &nbsp;&nbsp;
		       		 <li style="font-weight: bold; font-size: 30px;"><a href="#"> > </span></li>
		   			 </ul>
				</div>
		</div>
    
	



</body>
</html>