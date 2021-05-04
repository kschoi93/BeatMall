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
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link rel ="stylesheet" href="<%=request.getContextPath() %>/resources/css/sshj_admin.css" type="text/css"> 
 <style> 
	 #container li{ 
		 list-style-type:none; 
		 float:left; 
	 }  
	#contentBox{ 
		top:20px; 
		margin-left:10px;
	}
	#topBar h5{
		width:300px; 
	}
	#contentBox li{ 
		 width:16%; 
	}
	#contentBox li:nth-of-type(8n-7){ 
		width:0%; 
	}    
	#topBar li{ 
		 width:10%; 
	}
	#topBar li:nth-of-type(3){
		width:5.5%;
	} 
	#topBar li:nth-of-type(4){
		width:14%;
	}      
	#subjectLine{
		white-space:nowrap; 
		overflow:hidden;
		text-overflow:ellipsis;
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
<%@ include file="/inc/leftBar.jspf" %>
<div id="body1">
	<div id="container">
		<div id="topBar">
			<ul>
				<li><h5><strong><a href="customerListA">상품 문의</a></strong></h5></li> 
				<li><select name="sort" > 
		   				<option value="전체" selected>전체</option>
		   				<option value="문의번호">문의번호</option>
		   				<option value="제목">제목</option> 
		   				<option value="신고된 문의">신고된 문의</option> 
		   				<option value="구매자">구매자</option> 
		   				<option value="판매자">판매자</option> 
		   				<option value="등록일">등록일</option> 
			  		</select> 
	   			</li> 
				<li><button class="success" value="asc" name="asc" id="ascBtn">▲</button></li>
				<li><button class="success" value="desc" name="desc" id="descBtn">▼</button></li> 
				<li><button class="success" value="del" name="del" id="delBtn">비공개</button></li>
			</ul> 
		</div>  
   		<div id="contentBox"> 	
		<div id="title">
			<ul>
				<li><input type="checkbox" name="check"  ></li>
				<li>번호</li>
				<li>제목</li>
				<li>신고여부</li>
				<li>구매자</li>
				<li>판매자</li>
				<li>등록일</li> 
			</ul>
		</div>    
			<ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		<ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>   
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 <ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
			</ul> 
		 


 
		<!--  
		<c:forEach var="data" items="${list}">
			<ul class="noticeList">
				<li><input type="checkbox" name="check" id="check"> </li>
				<li> 123587</li>
				<li><a href="회원정보?">이중 결제가 된 것 같아요 </a></li>
				<li> - </li>
				<li> double123 </li> 
				<li>seller890</li>
				<li>2021-02-21</li>  
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