<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${bCheck==true }">
	<script>
     location.href="bcontent.do?no=${no}";
   </script>
</c:if>
<c:if test="${bCheck==false }">
<script>
 alert("비밀번호가 틀리셨습니다.");
 history.back();
</script>
</c:if>
