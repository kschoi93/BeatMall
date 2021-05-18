<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<style> 
	 /*회색 바*/   
	#topBar h5{  
		padding-left:160px;
	}
	#topBar li:nth-of-type(1){   
		position:relative;
		left:-8px;
	}
	#topBar li:nth-of-type(2){   
		margin-left:56px;
	}
	#topBar li:nth-of-type(4){
		width:6%;
	}  
	/*전체*/
	 #container li{ 
		 list-style-type:none; 
		 float:left;  
	 }
	#contentBox{
		top:-10px;
	}       
	#contentBox ul{
		margin-left:10px !important;
	}
	#contentBox li, #contentBox li:nth-of-type(5){ 
		width:11%;
	}
	#contentBox li:nth-of-type(9n-8){ 
		width:0%; 
	}
	#contentBox li:nth-of-type(3){ 
		width:28%; 
	}  
	#contentBox li:nth-of-type(2){ 
		width:13%; 
	}     
	#sortBox {
		margin: 50px 0 0 20px;
	}
	#sortBox li{
		margin-top:30px;
	}
	#sortBox>ul{
		width:1110px !important;
	}
	#sortBox li:nth-of-type(1) {
		width: 10%;
	}
	#sortBox li:nth-of-type(2) {
		display:flex;
		width: 16%;
	}
	#sortBox li:nth-of-type(3) {
		width:13%;
		margin-right:11px;
	}
	#sortBox li:nth-of-type(4) {
		margin-right:405px;
	} 
	#sortBox li:nth-of-type(5) {
		width:108px;
	} 
	#sortBox li:nth-of-type(6),#sortBox li:nth-of-type(7) {
		width:3.5%;
	} 
	#fromTo{
		margin-left:14px;
	}
	/*데이터 내용*/ 
	.cartImg{
		margin-left:10px;
		height:15%;
		width:20%;
	}
	#content input, textarea, select, #noticeSearchFrm input{
		border:1px solid lightgray; 
		border-radius: 3px;
	}#content li, label{
		list-style-type:none; 
		padding-bottom:10px;
	}
	#content select{
		height:28px;
	} 
	.contentList:nth-of-type(2n-1)>li:nth-of-type(6){
		padding:7.7px 0;
	}
	.contentList:nth-of-type(2n)>li:nth-of-type(6){
		padding:7.8px 0;
	}
	/*버튼*/
	#btns{ 
		top:-115px; 
		left:460px; 
	} 
	#btns a>button, button:nth-of-type(4){ 
		margin-left:900px; 
	} 
	#topBar Button:nth-of-type(1),
	#topBar Button:nth-of-type(2),
	#topBar Button:nth-of-type(3),
	#topBar Button:nth-of-type(4){
		padding:2px 7px;
	}    
	/* 페이징처리부분 */ 
	.page_nation .pprev {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_pprev.png') no-repeat center center;
		margin-left:0;
	}
	.page_nation .prev {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_prev.png') no-repeat center center;
		margin-right:7px;
	}
	.page_nation .next {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_next.png') no-repeat center center;
		margin-left:7px;
	}
	.page_nation .nnext {
		background:#f8f8f8 url('<%=request.getContextPath()%>/img/kpage_nnext.png') no-repeat center center;
		margin-right:0;
	}
	.page_nation a.active {
		background-color:#42454c;
		color:#fff;
		border:1px solid #42454c;
	}
	/* 페이징처리끝 */
</style> 
<%@ include file="/inc/top.jspf" %>
	<div id="topBarContainer">
		<div id="topBar">
			<ul>
				<li><h5><strong><a href="boardRecipeListA">레시피 관리</a></strong></h5></li> 
				<li><button class="success" value="add" name="add" id="addBtn">추가</button></li>
				<li><button class="success" value="del" name="del" id="delBtn">삭제</button></li>
			</ul> 
		</div>  
	</div>
<div id="body1">
<%@ include file="/inc/leftBar.jspf" %>
	<div id="container">
		<div id="sortBox">
			<ul>
				<li>
					<select name="searchDate">   
						<option value="regDate">등록일</option>
					</select>  
				</li>
				<li><input type="date" id="from"><div id="fromTo">~</div></li>
				<li><input type="date" id="todate"></li>		
				<li><input type="submit" value="검색" /></li>		
				<li><select name="sort" > 
		   				<option value="레시피번호" selected>레시피번호</option>
		   				<option value="제목">제목</option>
		   				<option value="추천수">추천수</option>
		   				<option value="조회수">조회수</option>
		   				<option value="즐겨찾기">즐겨찾기</option>
		   				<option value="작성자">작성자</option>
		   				<option value="등록일">등록일</option> 
			  		</select> 
	   			</li>  
				<li><button class="success" value="asc" name="asc" id="ascBtn">▲</button></li>
				<li><button class="success" value="desc" name="desc" id="descBtn">▼</button></li>
			 </ul>
		</div>
   		<div id="contentBox"> 	
		<div id="title">
			<ul>
				<li><input type="checkbox" name="check"></li>
				<li>레시피번호</li>
				<li>제목</li>
				<li>추천수</li>
				<li>조회수</li>
				<li>즐겨찾기</li>
				<li>작성자</li>
				<li>등록일</li> 
			</ul>
		</div>      
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li>
			
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li class="wordCut"><a href="회원정보?">우리집 봄여름 나물 더 맛있게 먹는 레시피 공유합니다...!!</a> </li>
				<li>12</li>
				<li>1362</li>
				<li>123<img class="cartImg" src="./img/y_heart.png" ></li> 
				<li>greenlike</li>
				<li>2021/04/26</li> 
			</ul> 
		 
		 


 
		<!--  
		<c:forEach var="data" items="${list}">
			<ul class="contentList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li>1569723</li>
				<li>판매자</li>
				<li><a href="회원정보?">[판매자 공지] 판매자 사업증 등록시 유의사항</a></li>
				<li>2021/05/23</li> 
			</ul>
		</c:forEach>-->
		</div>	 
		<div class="page_wrap">
			<div class="page_nation">
			   <a class="arrow pprev" href="<%=request.getContextPath()%>/img/kpage_pprev.png"></a>
			   <a class="arrow prev" href="#"></a>
			   <a href="#" class="active">1</a>
			   <a href="#">2</a>
			   <a href="#">3</a>
			   <a href="#">4</a>
			   <a href="#">5</a>
			   <a href="#">6</a>
			   <a href="#">7</a>
			   <a href="#">8</a>
			   <a href="#">9</a>
			   <a href="#">10</a>
			   <a class="arrow next" href="#"></a>
			   <a class="arrow nnext" href="#"></a>
			</div>
		 </div> 
		 <div>
			<form method="get" class="searchFrm" action="<%=request.getContextPath() %>/board/noticeBoardList.jsp">
				 <select name="searchKey">
					<option value="subject" selected>제목</option>
	   				<option value="no">공지번호</option> 
	   				<option value="who">대상</option> 
	   				<option value="writedate">공지일</option> 
				</select>			
				<input type="text" name="searchWord" id="searchWord"/>
				<input type="submit" value="검색"/> 
			</form> 
		</div>  
	</div>
</div> 
</html>