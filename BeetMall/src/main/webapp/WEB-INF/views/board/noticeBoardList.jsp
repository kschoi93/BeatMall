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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
<style>
	#topBar form, #selectMem, #selectSort,#title, #btns{position:relative;}
	#container{position:absolute; top:200px; left:180px; width:1740px; padding:0;}
	#container ul{width:1700px;} 
	#container li{list-style-type:none; float:left; width:10%; }
	#container li:nth-of-type(5n-1){ width:60%; } 
	#container li:not(:nth-of-type(5n-1)){text-align:center;}/*???정렬이 안먹힌다*/
	#topBar{ background-color:lightgray; float:left; width:1700px; height:50px; padding:10px 0 0 10px; margin-left:10px;}
	#selectMem{width:100px; top: -50px; left:150px; border-radius:10px;}
	#topBar>p{width:130px; padding-left:10px;}
	#topBar btns {top:-50px; left:150px;}
	#selectSort{top:-81px; left:260px;} 
	#btns{top:-110px; left:400px;}
	#title{ width: 1700px; font-weight:bold; padding:65px 0 25px 0; margin-left:10px; border-bottom:gray 1px solid;}
	#noticeList{padding-top:15px;}
</style>
<script>
$(function () {
    let container = $('#pagination');
    container.pagination({
        dataSource: [
            {name: "hello1"},
            {name: "hello2"},
            {name: "hello3"},
            {name: "hello4"},
            {name: "hello5"},
            {name: "hello6"},
            {name: "hello7"},
            {name: "hello8"},
            {name: "hello9"},
            {name: "hello10"},
            {name: "hello11"},
            {name: "hello12"},
            {name: "hello13"},
            {name: "hello14"},
            {name: "hello15"},
            {name: "hello16"},
            {name: "hello17"},
        ],
        callback: function (data, pagination) {
            var dataHtml = '<ul>';

            $.each(data, function (index, item) {
                dataHtml += '<li>' + item.name + '</li>';
            });

            dataHtml += '</ul>';

            $("#data-container").html(dataHtml);
        }
    })
})
</script>
</head>
<body>
<%@ include file="/inc/leftBar.jspf" %>
	<div id="container">
		<div id="topBar">
			<p><strong>게시글 목록</strong></p>  
				<form id="selectMem">
					<select name="sort" size="1" > 
		   				<option value="전체" selected>전체</option>
		   				<option value="판매자">판매자</option>
		   				<option value="소비자">소비자</option> 
   			  		</select> 
				</form> 
				<form id="selectSort">
					<select name="sort" size="1" > 
		   				<option value="등록일" selected>등록일</option>
		   				<option value="제목">제목</option> 
   			  		</select> 
				</form> 
				<form id="btns">
   			  		<input type="button" value="▲" name=""/>버튼?
   			  		<input type="button" value="▼" name=""/>버튼?
   			  		<input type="button" value="추가" name="noticeAdd"/> 버튼?
   			  		<input type="button" value="삭제" name="noticeDel"/> 버튼?
   			  	</form>
		</div>
		<div id="title">
			<ul>
				<li> &nbsp;</li>
				<li>번호</li>
				<li>유형</li>
				<li>제목</li>
				<li>등록일</li> 
			</ul>
		</div>
	
	 
		
		<ul id="noticeList">
		<c:forEach var="data" items="${list}">
			<li><input type="checkbox" name="check">체크박스?</li>
			<li>${data.no}</li>
			<li>판매자?</li>
			<li><a href="boardView?no=${data.no}">${data.subject}</a></li>  
			<li>${data.writedate}</li><br/>
		</c:forEach>
		
		<div id="data-container"></div>
        <div id="pagination"></div>
		
		
		</ul>
		 <a href="boardWrite">글쓰기</a>
		</div>
</body>
</html>