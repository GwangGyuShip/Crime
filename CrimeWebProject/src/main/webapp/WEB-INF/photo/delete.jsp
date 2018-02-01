<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
/* var ch = ${check1};
if(check.equals("true")){
	alert('비밀번호가 틀립니다.')
} */

</script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<style type="text/css">
.row{
   margin: 0px auto;
   width:300px;
}
</style>
</head>
<body>
   <div class="container">
    <div class="row">
     <center>
       <h3>삭제하기</h3>
     </center>
     <form method="post" action="p_delete.do">
      <table class="table table-hover" width=300>
      	<tr>
      		<td width=30% class="text-right">비밀번호</td>
      		<td width=70% class="text-left">
      			<input type=password name=pwd size=13>
      			<input type=hidden name=no value="${no }">
      		</td>
      	</tr>
      		<tr>
      			<td class="text-center" colspan="2">
      				<input class="btn btn-md" style="color: white; background-color: #2961d3" type="submit" value=삭제 name="delete">
      				<input class="btn btn-md" style="color: white; background-color: #2961d3"type="button" value=취소 onclick="javascript:history.back()">
      			</td>
      		</tr>
      </table>
      </form>
     </div>
    </div>
   </body>
</html>