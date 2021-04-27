<<<<<<< HEAD
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head> 
<style>
	div[id^=box],img,.last,#imgs,#claim,#secondBox {position:relative; }
	#claim,#secondBox{top:-120px;} 
	#imgs{list-style-type:none; display:flex; top:100px; left:-500px;}
	#imgs>li{margin-right:150px;}
	#imgs>li:nth-of-type(2){margin-right:200px;}
	#total{position:absolute; top:200px; left:175px; width:1080px; margin-left:20px;}
	img{width:100px; height:100px; }    
	#deli, #claim, #sta, #noti, #ques, #accept, #rep{border: gray 1px solid; width:48.5%; height:350px; float:left; margin:7px; border-radius:10px;}
	#ques, #accept, #rep{width:32%;}
	#total>div p{border-bottom:gray 2px solid; padding:10px 0 10px 20px;}
	#box0{ padding:150px 0 0 50px; }
	#box1,#box2{ top:-140px; }
	#box1{ left:300px; padding-top:75px;}
	#box2{ left:70px; padding-top:255px;}
	#box3{ top:-220px; left:320px;} 
	#box4,#box5,#box6{ top:25px; left:100px;}
	.last{left:120px; top:-10px;}   
	div[id^=box]>div{display:contents;}
	div[id^=box]{width:300px;}
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/inc/menu_c.jspf"%>
<style>
	.slider{
		width:1080px;
		height:450px;
		overflow:hidden;
		position:relative;
	}
	.slider>div:nth-child(2){
		width:3240px;
		height:450px;
		position:relative;
	}
	.slider img{
		width:1080px;
		height:450px;
		margin:0;
		padding:0;
	}
	#prevBtn, #nextBtn{
		width:30px;
		height:30px;
		background-repeat:no-repeat;
		top:200px;
		position:absolute;
		z-index:3;
		background-color:white;
		background-position:-1px -1px;
	}
	#prevBtn{
		left:10px;
		background-image:url(/sshj/img/dleft-arrow2.png);
	}
	#nextBtn{
		background-image:url(/sshj/img/dright-arrow2.png);
		left:1038px;
	}
	.nextBtn, .prevBtn{
		width:30px;
		height:30px;
		top : 140px;
		background-repeat:no-repeat;
		position:absolute;
		z-index:3;
		background-color:white;
		background-position:-1px -1px;
	}
	.nextBtn{
		background-image:url(/sshj/img/dright-arrow2.png);
		left:1008px;
	}
	.prevBtn{
		background-image:url(/sshj/img/dleft-arrow2.png);
		left:40px;
	}
	#banner{
		position:relative;
	}
	.roundImg{
		border-radius:100%;
		opacity:70%;
	}
	.productList{
		padding-left:100px;
		padding-right:100px;
		float:left;
		width:1080px;
		height:360px;
		position:relative;
		overflow:hidden;
	}
	.product{
		position:relative;
	}
	.product, .product>div{
		float:left;
	}
	
	.productPanel>div:nth-child(4n+1), .productPanel img{
		width:195px;
		height:250px;
	}
	.productPanel>div:nth-child(4n+2){
		width:195px;
		height:40px;
		font-size:1.1em;
		font-weight:800;
	}
	.productPanel>div:nth-child(4n+3){
		width:195px;
		height:40px;
		font-size:1.1em;
		font-weight:800;
	}
	.productPanel>div:nth-child(4n){
		width:195px;
		height:30px;
		font-size:0.7em;
		color:#999;		
	}
	.productPanel{
		width:195px;
		height:360px;
		margin-left:12px;
		margin-right:12px;
	}
	h2{
		text-align:center;
		line-height:100px;
	}
	a:active , a:link, a:hover, a:visited{
		color:black;
		text-decoration: none;
	}
	.product{
		width:1752px;
		height:360px;
		position:relative;
	}
	.productSetWidth{
		width:876px;
		overflow:hidden;
	}
	.todayRecipt{
		width:1080px;
		height:360px;
		margin:0 100px;
	}
	.reciptList>div:nth-child(3n+1), .reciptList>div:nth-child(3n+1) img{
		width:273px;
		height:250px;
	}
	.reciptList>div:nth-child(3n+2){
		width:273px;
		height:40px;
		font-size:1.3em;
		font-weight:600;
		line-height:40px;
	}
	.reciptList>div:nth-child(3n){
		width:273px;
		height:30px;
		text-align:right;
		position:relative;
	}
	.reciptList{
		width:273px;
		height:330px;
		float:left;
		margin:0 10px;
	}
	.like, .unlike{
		height:20px;
		width:20px;
		background-size:20px 20px;
		float:right;
		position:absolute;
		left:210px;
		top:2px;
	}
	.like{
		background-image:url(/sshj/img/dlike.png);
	}
	.unlike{
		background-image:url(/sshj/img/dunlike.png);
	}
	.reciptList>div>div{
		float:left;
	}
	.likeCount{
		color:red;
		padding-left:5px;
		line-height:20px;
		height:20px;
	}
	.bClassSale{
		background-color:rgb(140 224 102 / 36%);
		height:400px;
		width:100%;
	}
	#bClassSale{
		position:relative;
	}
	#bTitle{
		padding-top:30px;
	}
	#bSubject{
		margin-left:220px;
		font-size:2em;
		font-weight:800;
	}
	#bSpices{
		margin-left:220px;
		margin-top:10px;
		
	}
	#bSaleInfo{
		margin-left:220px;
	}
	#bSaleInfo>span:nth-child(1){
		color:red;
		font-size:3em;
		font-weight:900;
		position:absolute;
		left:470px;
		top:200px;
	}
	#bSaleInfo>span:nth-child(2){
		color:red;
		text-align:right;
		position:absolute;
		font-size:1.4em;
		left:688px;
		top:210px;
	}
	#bSaleInfo>span:nth-child(3){
		color:black;
		text-align:right;
		position:absolute;
		left:713px;
		top:240px;
		text-decoration:line-through;
	}
	#bNotice{
		margin-top:180px;
		color:rgb(46, 204, 113);
		font-size:0.8em;
	}
	#bInfoImg{
		position:absolute;
		left:800px;
		top:20px;
	}
	#bInfoTitle{
		position:absolute;
		left:960px;
		top:20px;
		height:50px;
		line-height:50px;
		width:200px;
		font-size:1.5em;
		text-weight:800;
		text-align:center;
		background-color:rgb(224,102,102);
		opacity: 80%;
		color:white;
	}
	#bInfoTime{
		position:absolute;
		left:800px;
		top:330px;
		height:50px;
		line-height:50px;
		width:360px;
		font-size:1.5em;
		text-weight:800;
		text-align:center;
		background-color:rgb(224,102,102);
		opacity: 80%;
		color:white;
	}
>>>>>>> refs/remotes/origin/develop
</style>
</head>
<<<<<<< HEAD
<body>  
	<%@ include file="/inc/leftBar.jspf" %>
	<div id="total"> 
		<div id="deli"> 
			<p>주문/배송</p><br/> 
			   <div id="box0">신규 주문 <div>13</div> 건</div> 
			  		<div id="box1">배송 준비 <div>3</div> 건<br/>
			   			 배송 중 <div>7</div> 건<br/>
			   			 배송 완료 <div>13</div> 건 </div> 
		</div>
		<ul id="imgs">
			<li><img id="odd1" src="<%=request.getContextPath()%>/resources/yimg/new.png"/></li>
			<li><img id="even" src="<%=request.getContextPath()%>/resources/yimg/truck.png"/></li>
			<li><img  id="odd2" src="<%=request.getContextPath()%>/resources/yimg/undo.png"/></li>
			<li><img id="evenwon" src="<%=request.getContextPath()%>/resources/yimg/won.png"/><br/></li>
		</ul>
		<div id="claim">
			<p>클레임/매출</p><br/>
			   
			    	<div id="box2">취소 요청 <div>0</div> 건<br/>
			    	 	 반품 요청 <div>1</div> 건<br/>
			     		 교환 요청 <div>2</div> 건
			     </div>
			  
			    	<div id="box3">매출 <div>3,000,000</div>원<br/>
			    		 환불 <div>30,000</div>원</div>
		</div>
		<div id="secondBox">
		<div id="sta">
			   <p>매출 통계</p><br/>
			   <img id="grape" src="<%=request.getContextPath()%>/resources/yimg/grape.PNG" style="width:300px;"/>
		</div>
		<div id="noti">
			 <p>공지사항</p><br/>
			 <span>  [시스템 공지]보안 업데이트로 인한 알림 21/05/02</span><br/>
			 <span>  [시스템 공지]보안 업데이트로 인한 알림 21/05/02</span><br/>
			 <span>  [시스템 공지]보안 업데이트로 인한 알림 21/05/02</span><br/>
			 <span>  [시스템 공지]보안 업데이트로 인한 알림 21/05/02</span><br/>
		</div>
		<div id="ques">
			<p>미답변 문의/리뷰</p><br/>
			  <img class="last" src="<%=request.getContextPath()%>/resources/yimg/question.png"/> 
			 		<div id="box4">미답변 문의 <div>12</div>건<br/>
			  			 미답변 리뷰 <div>3</div>건</div>
		</div>
		<div id="accept">
			<p>판매자 승인 요청</p><br/>
			   <img class="last" src="<%=request.getContextPath()%>/resources/yimg/accept.png"/>
			   		<div id="box5">승인 신청 건수 <div>6</div>건<br/> 
			   			 미처리 건수 <div>7</div>건</div>
		</div>
		<div id="rep">
			<p>신고내역</p><br/>
			 <img class="last" src="<%=request.getContextPath()%>/resources/yimg/report.png"/>
			   		<div id="box6">접수 건수 <div>3</div>건<br/> 
			   			 미처리 건수 <div>0</div>건</div>
			</div>
		</div> 
	</div> 
</body>
</html>
=======
<script>
	$(function(){
		function banner(idx){
			var left= -(idx*1080);
			$(".slider>div").eq(1).animate({marginLeft:left+"px"},1000);
		}
		var ran = parseInt(Math.random()*3);
		banner(ran);
		$("#prevBtn").click(function(){
			ran--;
			if(ran<0){
				ran=2;
			}
			banner(ran);
		});
		$("#nextBtn").click(function(){
			ran++;
			if(ran>2){
				ran=0;
			}
			banner(ran);
		});
		
		
		function todayProduct(idx){
			var left= -(idx*219);
			$("#todayProduct").eq(0).animate({marginLeft:left+"px"},1000);
		}
		var todaySelect = 4;
		todayProduct(todaySelect);
		
		$("#todayPrev").click(function(){
			todaySelect-=4;
			if(todaySelect < 0){
				todaySelect = 4;
			}
			todayProduct(todaySelect);
		});
		$("#todayNext").click(function(){
			todaySelect+=4;
			if(todaySelect > 4){
				todaySelect = 0;
			}
			todayProduct(todaySelect);
		});
		
		function newProduct(idx){
			var left= -(idx*219);
			$("#newProduct").eq(0).animate({marginLeft:left+"px"},1000);
		}
		var newProductSelect = 4;
		newProduct(todaySelect);
		
		$("#newProductPrev").click(function(){
			newProductSelect-=4;
			if(newProductSelect < 0){
				newProductSelect = 4;
			}
			newProduct(newProductSelect);
		});
		$("#newProductNext").click(function(){
			newProductSelect+=4;
			if(newProductSelect > 4){
				newProductSelect = 0;
			}
			newProduct(newProductSelect);
		});
		
		function bestProduct(idx){
			var left= -(idx*219);
			$("#bestProduct").eq(0).animate({marginLeft:left+"px"},1000);
		}
		var bestSelect = 4;
		bestProduct(bestSelect);
		
		$("#bestProductPrev").click(function(){
			bestSelect-=4;
			if(bestSelect < 0){
				bestSelect = 4;
			}
			bestProduct(bestSelect);
		});
		$("#bestProductNext").click(function(){
			bestSelect+=4;
			if(bestSelect > 4){
				bestSelect = 0;
			}
			bestProduct(bestSelect);
		});
		
		
	});
</script>
<div class="section">
	<div style="height:100px;width:1080px;">
		<h5><a href="mybuyList">구매내역</a></h5>
		<h5><a href="myChatList">채팅</a></h5>
		<!-- 링크걸면서확인 -->
	</div>
	<div id="banner">
		<div id="prevBtn" class="roundImg"></div>
		<div class="slider">
			<div></div>
			<div>
				<a href="/sshj/inc/errorPage.jsp"><img src="/sshj/img/dleaves.jpg"/></a><a href="error/errorPage.jsp"><img src="/sshj/img/dcherry-blossom.jpg"/></a><a href="/sshj/inc/errorPage.jsp"><img src="/sshj/img/dmelon.jpg"/></a>
			</div>
		</div>
		<div id="nextBtn" class="roundImg"></div>
	</div>
	<h2>오늘의 상품<span id="numm"></span></h2>
	<hr/>
	<div class="productList">
		<div class="prevBtn roundImg" id="todayPrev"></div>
		<div class="productSetWidth">
		<div class="product" id="todayProduct">
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 1kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 2kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 3kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 4kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 5kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 6kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 7kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 8kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
		</div>
		</div>
		<div class="nextBtn roundImg" id="todayNext"></div>
	</div>
	<div>
	<h2>오늘의 제철 레시피</h2>
		<div class="todayRecipt">
			<div class="reciptList"><div><img src="/sshj/img/pi.gif"/></div><div>파를 이용한 요리</div><div><div class="like"></div><span class="likeCount">999+</span></div></div>
			<div class="reciptList"><div><img src="/sshj/img/pi.gif"/></div><div>파를 이용한 요리</div><div><div class="unlike"></div><span class="likeCount">999+</span></div></div>
			<div class="reciptList"><div><img src="/sshj/img/pi.gif"/></div><div>파를 이용한 요리</div><div><div class="unlike"></div><span class="likeCount">999+</span></div></div>
		</div>
	</div>
	</div>
	<div class="bClassSale">
		<div class="section" id="bClassSale">
			<h3 id="bTitle">B급 품목 세일!</h3>
			<div id="bSubject">감자의 달인 김용제가 재배한 특급감자</div>
			<div id="bSpices">강원도 노지감자</div>
			<div id="bSaleInfo"><span>30,000원</span><span>20,000원</span><span>50,000원</span></div>
			<div id="bNotice">망설이면 늦어요!</div>
			<div id="bInfo"><img src="/sshj/img/pi.gif" id="bInfoImg"/>
					<div id="bInfoTitle">강원도 노지감자</div>
					<div id="bInfoTime">06:48:17 남음</div>
			</div>
			
		</div>
	</div>
	
	<div class="section">
	<br/>
	<h2>신상품<span id="numm"></span></h2>
	<hr/>
	<div class="productList">
		<div class="prevBtn roundImg" id="newProductPrev"></div>
		<div class="productSetWidth">
		<div class="product" id="newProduct">
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 1kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 2kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 3kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 4kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 5kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 6kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 7kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 8kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
		</div>
		</div>
		<div class="nextBtn roundImg" id="newProductNext"></div>
	</div>
	<br/>
	<h2>베스트 상품<span id="numm"></span></h2>
	<hr/>
	<div class="productList">
		<div class="prevBtn roundImg" id="bestProductPrev"></div>
		<div class="productSetWidth">
		<div class="product" id="bestProduct">
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 1kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 2kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 3kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 4kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 5kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 6kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 7kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
			<div class="productPanel"><div><a href="error"><img src="/sshj/img/pi.gif"/></a></div><div><a href="error">GAP방울토마토 8kg</a></div><div>8,200원</div><div>친환경으로 재배한 무농약 토마토(1kg)</div></div>
		</div>
		</div>
		<div class="nextBtn roundImg" id="bestProductNext"></div>
	</div>
		<h2>비트의 레시피</h2>
		<div class="todayRecipt">
			<div class="reciptList"><div><img src="/sshj/img/pi.gif"/></div><div>파를 이용한 요리</div><div><div class="like"></div><span class="likeCount">999+</span></div></div>
			<div class="reciptList"><div><img src="/sshj/img/pi.gif"/></div><div>파를 이용한 요리</div><div><div class="unlike"></div><span class="likeCount">999+</span></div></div>
			<div class="reciptList"><div><img src="/sshj/img/pi.gif"/></div><div>파를 이용한 요리</div><div><div class="unlike"></div><span class="likeCount">999+</span></div></div>
		</div>
	</div>
</div>
>>>>>>> refs/remotes/origin/develop
