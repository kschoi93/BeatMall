<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head> 
<style>
	div[id^=box],img[id$=won],.last{position:relative; }
	#total{position:absolute; top:200px; left:180px; width:1740px;}
	img{wight:180px; height:180px; padding:20px 10px 40px 60px;  }
	img[id^=even]{padding-left:100px;} 
	img[id$=won]{top:-270px; left:365px;}
	#deli, #claim, #sta, #noti, #ques, #accept, #rep{border: gray 1px solid; width:48.5%; height:350px; float:left; margin:7px; border-radius:10px;}
	#ques, #accept, #rep{width:32.1%;}
	#total>div p{border-bottom:gray 2px solid; padding:10px 0 10px 20px;}
	#box1,#box2{ top:-140px; }
	#box1{ left:610px; margin:0;}
	#box2{ left:220px; width:200px; margin:0; }
	#box3{ top:-400px; left:650px;} 
	#box4,#box5,#box6{ top:-130px; left:300px;}
	.last{left:30px; top:10px;}
</style>
</head>
<body> 
	<%@ include file="/inc/leftBar.jspf" %>
	<div id="total">
		<div id="search">
			<form>
				input	<input type="text" name="search" id="search" placeholder="search" />인풋박스가 안나온다
				<input type="text" id="text" name="text" placeholder="text"> 
			</form>
		</div>
		<div id="deli">
			<p>주문/배송</p><br/>
			   <img src="<%=request.getContextPath()%>/resources/yimg/new.png"/>
			   신규 주문 N건
			   <img id="even" src="<%=request.getContextPath()%>/resources/yimg/truck.png"/>
			  		<div id="box1">배송 준비 N 건<br/>
			   			 배송 중 N 건<br/>
			   			 배송 완료 N 건 </div> 
		</div>
		<div id="claim">
			<p>클레임/매출</p><br/>
			     <img src="<%=request.getContextPath()%>/resources/yimg/undo.png"/>
			    	<div id="box2">취소 요청 N 건<br/>
			    	 	 반품 요청 N 건<br/>
			     		 교환 요청 N 건
			     </div>
			     <img id="evenwon" src="<%=request.getContextPath()%>/resources/yimg/won.png"/><br/>
			    	<div id="box3">매출 N원<br/>
			    		 환불 N원</div>
		</div>
		<div id="sta">
			   <p>매출 통계</p><br/>
		</div>
		<div id="noti">
			 <p>공지사항</p><br/>
		</div>
		<div id="ques">
			<p>미답변 문의/리뷰</p><br/>
			  <img class="last" src="<%=request.getContextPath()%>/resources/yimg/question.png"/> 
			 		<div id="box4">미답변 문의 N건<br/>
			  			 미답변 리뷰 N건</div>
		</div>
		<div id="accept">
			<p>판매자 승인 요청</p><br/>
			   <img class="last" src="<%=request.getContextPath()%>/resources/yimg/accept.png"/>
			   		<div id="box5">승인 신청 건수 N건<br/> 
			   			 미처리 건수 N건</div>
		</div>
		<div id="rep">
			<p>신고내역</p><br/>
			 <img class="last" src="<%=request.getContextPath()%>/resources/yimg/report.png"/>
			   		<div id="box6">접수 건수 N건<br/> 
			   			 미처리 건수 N건</div>
		</div> 
	</div> 
</body>
</html>
