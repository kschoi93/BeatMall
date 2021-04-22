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
	#topBar form,#noticeSearchFrm, #title, #btns, #selectCustomer, #topBar, #topBox, #delBtn, #title>ul, #topBar li, #topBar button {position:relative;}
	#container{ position:absolute; top:200px; left:180px; width:1740px; padding:0;}
	#container ul{ width:1700px;} 
	#container li{ list-style-type:none; float:left; width:10%; } 
	#topBar{ background-color:lightgray; float:left; width:1700px; height:50px; padding:10px 0 0 20px; margin-left:10px; top:-200px; left:-180px;}
	#topBar>span{ width:150px; padding-left:10px;}   
	select{width:100px;}
	#topBar li{ width:8%;}
	#topBar li:nth-of-type(2){left:-3px;} 
	#topBar li:nth-of-type(3){left:40px;} 
	#topBar li:nth-of-type(4){width:3%;} 
	#topBar li:nth-of-type(5){width:55%;} 
	#topBar button { top:-2px; }  
	button{color: #444444; background: #F3F3F3; border: 1px #DADADA solid; outline: none; 
			padding: 5px 10px; margin:0 5px; border-radius: 5px; font-weight: bold; font-size: 12pt; }
	button:active, button:hover, button:focus{ background-color:rgb(153,153,153)}
	#btns a>button, button:nth-of-type(4){ margin-left:900px; }  
	#addBtn, #delBtn{width:100px;}
	#title{ width: 1690px; font-weight:bold; padding:65px 0 25px 0; margin-left:10px; border-bottom:gray 1px solid; }
	#title>ul{left:-10px;}
	#customerList{ padding-top:20px; }
	#customerList li, #title li{ line-height:30px; width:10%; text-align:center;}
	#customerList li:nth-of-type(8n+1), #title li:nth-of-type(1){ width:5%;}
	#customerList li:nth-of-type(8n-3), #title li:nth-of-type(5){ width:17%;}
	#customerList li:nth-of-type(8n-1), #title li:nth-of-type(7){ width:28%;}
	.pagination{ padding:20px 0 20px 600px; }
	.pagination a { color: black; float: left; padding: 8px 16px; text-decoration: none; transition: background-color .3s; }
	.pagination a.active { background-color: rgb(224,102,102); color: white; }
	.pagination a:hover:not(.active) { background-color: #ddd; }
	#noticeSearchFrm{ top:30px; left:550px;}
	#selectCustomer{ top:-30px; left:260px;}
	#topBox{ top:-210px; left:-190px;}
	input[type=checkbox] {zoom: 1.8;} 
</style>
<script>
 
</script>
</head>
<body>
<%@ include file="/inc/leftBar.jspf" %>
	<div id="container">
		<div id="container">
		<div id="topBar">
			<ul>
				<li><strong>일반회원 목록</strong></li> 
				<li><select name="sort" > 
		   				<option value="이름" selected>이름</option>
		   				<option value="아이디">아이디</option>
		   				<option value="나이">나이</option> 
		   				<option value="이메일">이메일</option> 
		   				<option value="생년월일">생년월일</option> 
		   				<option value="주소">주소</option> 
		   				<option value="가입날짜">가입날짜</option> 
			  		</select> 
	   			</li> 
				<li><button class="success" value="asc" name="asc">▲</button></li>
				<li><button class="success" value="desc" name="desc">▼</button></li>
				<li><button class="success" value="add" name="add" id="addBtn">추가</button></li>
				<li><button class="success" value="del" name="del" id="delBtn">삭제</button></li>
			</ul> 
		</div>   
		<div id="title">
			<ul>
				<li><input type="checkbox" name="check" id="allCheck"> </li>
				<li>이름</li>
				<li>아이디</li>
				<li>나이</li>
				<li>이메일</li>
				<li>생년월일</li>
				<li>주소</li>
				<li>가입일</li> 
			</ul>
		</div> 
		<ul id="customerList">
			<c:forEach var="data" items="${list}">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>${data.no}</li>
				<li><a href="회원정보?no=${data.no}">${data.userid}</a></li>
				<li>나이?</li>
				<li>{member.email}</li>  
				<li>{data.birthday}</li>
				<li>{data.addr}</li>
				<li>{data.writedate}<br/></li> 
			</c:forEach>
		</ul>
		<div class="pagination">
  <a href="#">&laquo;</a>
  <a href="#">1</a>
  <a class="active" href="#">2</a>
  <a href="#">3</a>
  <a href="#">4</a>
  <a href="#">5</a>
  <a href="#">6</a>
  <a href="#">&raquo;</a>
</div>

	<!-- 
	 <ul class="breadcrumb pagination-md">
	 	 % if(nowNum>1){%>
	 		<li class="page-item"><a href="noticeBoardList.jsp?nowNum= %=nowNum-1%> %
	 		if(searchWord!=null && !searchWord.equals("")){
	 			out.write("&searchKey="+searchKey+"&searchWord="+searchWord);}%>" 
				class="page-link">Prev</a></li>
		 % }else{%>
			<li class="page-item disabled"><a href="#" class="page-link">Prev</a></li>
		 % }
	 		//페이지 번호 매기기                  
	 		for(int p=startPage; p<startPage+onePageSize; p++){
				if(p<=totalPage){
		 			if(nowNum==p){//현재 보고있는 페이지에 표시하기
		%>		 	
	 				<li class="page-item active"><a href="noticeBoardList.jsp?nowNum= %=p%> %
			if(searchWord!=null && !searchWord.equals("")){
				out.write("&searchKey="+searchKey+"&searchWord="+searchWord);}%>" class="page-link"> %=p%></a></li>
		  
		 % 		}else{//현재 보고있는 페이지가 아닐 때 표시하기
		    %>
        <li class="page-item"><a href="noticeBoardList.jsp?nowNum= %=p %> %if(searchWord!=null && !searchWord.equals("")){out.write("&searchKey="+searchKey+"&searchWord="+searchWord);} %>" class="page-link"> %=p %></a></li>   
           %   }
          }/// totalPage
      }

	 	if(nowNum==totalPage){ //마지막 페이지
	 	%>
	 		<li class="page-item disabled"><a href="#" class="page-link">Next</a></li>	
	 	 % }else{ %>
	 	 	<li class="page-item"><a href="noticeBoardList.jsp?nowNum= %=nowNum+1%> %
	 	if(searchWord!=null && !searchWord.equals("")){
	 		out.write("&searchKey="+searchKey+"&searchWord="+searchWord);}%>" class="page-link">Next</a></li>
	 	 % } %>
	 </ul>		
 -->
 
	 <div>
		<form method="get" id="noticeSearchFrm" action="<%=request.getContextPath() %>/board/noticeBoardList.jsp">
			<select name="searchKey">
				<option value="subject" selected>제목</option>
   				<option value="공지번호">공지번호</option> 
   				<option value="대상">대상</option> 
   				<option value="공지일">공지일</option> 
			</select>			
			<input type="text" name="searchWord" id="searchWord"/> 
			<input type="submit" value="검색"/>  
		</form>
	</div>  
		</div>
		</div>
</body>
</html>