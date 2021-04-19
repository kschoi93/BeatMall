<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<style>
	#topBar form, #topBar input{position:relative;}
	.container{position:absolute; top:200px; left:180px; width:1740px; padding:0;}
	ul{width:1700px;} 
	li{list-style-type:none; float:left; width:9%;}
	#topBar{ background-color:lightgray; float:left; width:1700px; height:50px; padding:10px 0 0 10px ;}
	#topBar form{width:100px; top: -50px; left:150px; border-radius:10px;}
	#topBar>p{width:130px;}
	#topBar input{top:-50px; left:150px;}
</style>
</head>
<body>
<%@ include file="/inc/leftBar.jspf" %>
	<div class="container">
		<div id="topBar">
			<p>일반회원 목록</p>  
				<form>
					<select name="sort" size="1" > 
		   				<option value="이름" selected>이름</option>
		   				<option value="아이디">아이디</option>
		   				<option value="나이">나이</option>
		   					<option value="이메일">이메일</option>
		   				<option value="생년월일">생년월일</option>
		   				<option value="주소">주소</option>
		   				<option value="가입날짜">가입날짜</option>
   			  		</select><br/><br/> 
   			  		<input type="button" value="▲"/>버튼
   			  		<input type="button" value="▼"/>버튼
   			  		<input type="button" value="삭제"/> 버튼
				</form> 
		</div>
		<div id="title">
			<ul>
				<li>이름</li>
				<li>아이디</li>
				<li>나이</li>
				<li>이메일</li>
				<li>생년월일</li>
				<li>주소</li>
				<li>가입날짜</li>
			</ul>
		</div>
	
	 
		
		<ul>
		<c:forEach var="data" items="${list}">
			<li>${data.no}</li>
			<li><a href="boardView?no=${data.no}">${data.subject}</a></li>
			<li>${data.userid}</li>
			<li>${data.hit}</li>
			<li style="border-bottom:1px solid red">${data.writedate}</li><br/>
		</c:forEach>
		</ul>
		 <a href="boardWrite">글쓰기</a>
		</div>
</body>
</html>