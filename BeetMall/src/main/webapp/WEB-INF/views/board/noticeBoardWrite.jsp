<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
<style> 
	#box, #title, #cke_content{ position:relative; }
	.container{position:absolute; top:200px; left:180px; width:1740px; padding:0; width:1740px; }
	#topBar{ background-color:lightgray; float:left; width:1700px; height:50px; padding:10px 0 0 10px; margin-left:20px; }
	#box{ border:lightgray 1px solid; width:1700px; height:500px; top:60px; left:10px; border-radius:10px; }
	#title{ top:-30px; left:20px; border-bottom: lightgray 1px solid; width:1660px; padding-bottom:20px;}
	#noticeTitle{ padding-left:50px; }
	#writeTitle{ padding-left:1150px; }
	#cke_content{ width:1650px; left:20px; height:500px; max-height: 400px; resize_enabled:false;}
</style> 
<script>
	$(function(){
		CKEDITOR.replace("content"); 
		$("#frm").submit(function(){
			if($("#subject").val()==""){
				alert("제목을 입력하세요");
				return false;
			}
			if(CKEDITOR.instances.content.getData()==""){
				alert("글 내용을 입력하세요");
				return false;
			}
			return true;
		});
		
		 
	});
</script>
</head>
<body>
<%@ include file="/inc/leftBar.jspf" %> 
	<div class="container">
	<div id="topBar">
		<p><strong>공지 작성</strong></p>   
	</div>
	<div id="box">
		<div id="title">	
			<form method="post" id="notiWritefrm" action="noticeWriteOk.jsp">
		
			번호 : 다음 번호?  <span id="noticeTitle">제목 : <input type="text" id="notiSubject" name="noticeSubject"/></span> <span id="writeTitle">등록일 오늘날짜?</span>
			</form>
		</div>
		<textarea name="content" id="content"></textarea> 
		<input type="submit" value="등록"/> 
	</div>
	
	 
	</div> 
</body>
</html>