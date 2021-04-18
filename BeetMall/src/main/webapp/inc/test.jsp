<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
<script src="//cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>  

<style> 
	.container>#menu a:link, a:visited{   color:rgb(252,237,237); }
	.container>#menu a:hover, a:active{ color:rgb(35,35,35); }    
 
</style>
<script>   

$(function(){	  
	 
		//메뉴 호버시 서브메뉴 나타나기
		$("#menu>li").hover(function(){ 
			$(this).children('ul').css('display','block');   
			$(this).children('ul').children('li').css('height','50px');   
			$(this).children('ul').children('li').css('max-height','50px');  
		}, function(){
			$(this).children('ul').css('display','none');		
		});
		//서브메뉴 호버시 바탕색 변경
		$("#menu>li>ul>li").hover(function(){
			$(this).css('background-color','rgb(242, 124, 124)');  
		},function(){
			$(this).css('background-color','rgb(224,102,102)');  
		});
		//ul호버 아웃시 서브메뉴 안보이기
		$("#menu>ul").hover(function(){}, function(){
			$(this).css('display','none');   
		}); 
	});
</script>
 
</head>
<body>  
	<div class="container"> 	
			<ul id="menu">
			<li><a href="#">일반회원<span> ∨</span></a>
				<ul> 
					<li class="subList"><a href="#">회원 목록</a></li>
					<li class="subList"><a href="#">탈퇴 회원</a></li>
					<li class="subList"><a href="#">블랙리스트</a></li> 
				</ul>
			</li>
			<li><a href="#">판매자<span> ∨</span></a>
				<ul>
					<li class="subList"><a href="#">판매자 목록</a></li>
					<li class="subList"><a href="#">탈퇴 판매자</a></li>
					<li class="subList"><a href="#">블랙리스트</a></li> 
				</ul>
			</li>
		 
		<li><a href="#">매출관리<span> ∨</span></a>
				<ul> 
					<li><a href="#">수익 매출분석</a></li>
					<li><a href="#">카테고리별 매출분석</a></li>
					<li><a href="#">구매내역</a></li>
				</ul>
			</li>
		<li><a href="#">정산관리<span> ∨</span></a>
				<ul>
					<li><a href="#">정산관리</a></li> 
				</ul>
			</li>
			<li><a href="#">게시글관리<span> ∨</span></a>
				<ul>   
				
					<li><a href="#">공지 관리</a></li>
					<li><a href="#">레시피 관리</a></li>
					<li><a href="#">소비자 리뷰</a></li>
					<li><a href="#">상품 목록</a></li>
					<li><a href="#">디자인 관리</a></li>
				</ul>
			</li>
			<li><a href="#">고객센터<span> ∨</span></a>
				<ul> 
					<li><a href="#">고객문의</a></li>
					<li><a href="#">상품문의 열람</a></li>
					<li><a href="#">자주묻는 질문</a></li> 
					<li><a href="#">1:1채팅</a></li>
				</ul>
			</li>
		</ul>

	<c:if test="${logStatus!='Y'}">	
		<a href="<%=request.getContextPath()%>/login">a</a>
	</c:if>
	  
	<a href="/home/boardList">a</a>
	 
</div> 