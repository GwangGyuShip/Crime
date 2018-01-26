<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 부트스트랩 연결 -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- 전체적인 사이즈 잡아주기 -->
<style type="text/css">
.row{
   margin: 0px auto;
   width:700px;
}
</style>

</head>
<body>
   <div class="container">
    <div class="row">
     
     <center>
       <h3>게시글 내용</h3>
     </center>
     
     <table class="table table-hover" width=600>
      <!-- 내용 VO 에 담긴 내용 가져오기  -->
      <tr>
        <td width=20% class="text-center success">분류</td>
        <td width=30% class="text-center">${vo.board_area }</td>
        <td width=20% class="text-center success">동네</td>
        <td width=30% class="text-center">${vo.board_group }</td>
       </tr>
       <tr>
        <td width=20% class="text-center success">번호</td>
        <td width=30% class="text-center">${vo.board_no }</td>
        <td width=20% class="text-center success">작성일</td>
        <td width=30% class="text-center">
          <fmt:formatDate value="${vo.board_regdate }"
           pattern="yyyy-MM-dd"
          />
        </td>
       </tr>
       <tr>
        <td width=20% class="text-center success">닉네임</td>
        <td width=30% class="text-center">${vo.board_name }</td>
        <td width=20% class="text-center success">조회수</td>
        <td width=30% class="text-center">${vo.board_hit }</td>
       </tr>
       <tr>
        <td width=20% class="text-center success">제목</td>
        <td colspan="3" class="text-left">${vo.board_subject }</td>
       </tr>
       <tr>
         <td colspan="4" height="150" class="text-left" valign="top" width="600">${vo.board_content }</td>
       </tr>
       
<!-- 수정하기 , 삭제하기 , 목록 버튼  -->
       <tr>
         <td colspan="4" class="text-right">
           <a href="update.do?no=${vo.board_no }" class="btn btn-sm btn-success">수정</a>
           <a href="delete.do?no=${vo.board_no }" class="btn btn-sm btn-primary">삭제</a>
           <a href="boardmain.do" class="btn btn-sm btn-info">목록</a>
         </td>
       </tr>
     </table>
     <table class="table" width="600">
       
     </table>
    </div>
   </div>
</body>
</html>







