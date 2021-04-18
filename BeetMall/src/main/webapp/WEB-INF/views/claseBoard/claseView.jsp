 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function boardDel(){
		if(confirm("삭제하시겠습니까?")){
			location.href="claseDel?no=${dto.no}";
		}
	}
</script>
</head>
<body>
	<div id="container">
		<h1>답변형 게시판 글내용보기</h1>
		<ul>
			<li>번호 : ${dto.no}</li>
			<li>작성자 : ${dto.userid}</li>
			<li>등록일 : ${dto.writedate}, 조회수 : ${dto.hit}</li>
			<li>제목 : ${dto.subject}</li>
			<li>글내용<br/>${dto.content}</li>
		</ul>
		<div>
			<a href="claseEdit?no=${dto.no}">수정</a>
			<a href="javascript:boardDel()">삭제</a>
			<a href="claseWriteForm?no=${dto.no}">답글</a>
		</div>
		<div id="prevNext"> 
			<c:if test="${dto.step==0}"> 
				<a href="claseView?no=${dto.no-1}"> 이전글 </a><br/> 
			</c:if>
			<c:if test="${dto.step==0} && ${dto.no+1 ne 0}"> 	
				 <a href="claseView?no=${dto.no+1}"> 다음글</a> 
			</c:if>
		</div>
	</div>
</body>
</html>