<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Board</title>

	<style>
		.nav{
			height : 70px;
			display : flex;
			border-bottom : 1px solid black;
			align-items : center;
		}
		
		.nav-right-items{
			margin-left : auto;
			display :flex;
		
		}
		
		.nav-item{
			margin-left : 10px;
		}
		
		.container{
			margin-top : 150px;
		}
		
		#table {display: table; width: 75%;}
		.row {display: table-row;}
		.cell {display: table-cell; padding: 3px; border-bottom: 1px solid #DDD;}
		.col1 { width: 5%;}
		.col2 {width: 30%;}
		.col3 {width: 5%;}
		.col4 {width: 10%;}
		.col5 {width: 10%;}
		.col6 {width: 15%;}
	</style>
</head>

<body>
	<h1 align="center">
			jew's webBoard  
	</h1>
	
	<div class="nav">
		<div class="nav-right-items">	
				<% if( session.getAttribute("loginUser")==null){ %>
					<div class="nav-item">
						<a href="/views/loginPageGo" style="text-decoration:none">로그인</a>
					</div>
					<div class="nav-item">
						<a href="/views/memberPageGo" style="text-decoration:none">회원가입</a>
					</div>		
				<% } else { %>
					<div class="nav-item">
						<a href="/logout" style="text-decoration:none">로그아웃</a>
					</div>
					<div class="nav-item">
						<a href="/member/update/${loginUser.userId }" style="text-decoration:none">회원정보수정</a>
					</div>
					<div class="nav-item">
						<a href="/board/list" style="text-decoration:none">게시판목록</a>
					</div>
				<%} %>
		</div>	
	</div>
	
	<h1 align="center">
		나의 글 목록  
	</h1>

	<div align="center" class="container">		
			<div id="table">
				<div class="row">
					<span class="cell col1">순번</span>
					<span class="cell col2">제목</span>
					<span class="cell col3">글쓴이</span>
					<span class="cell col4">등록날짜</span>
					<span class="cell col5">수정날짜</span>
					<span class="cell col6">기능</span>
				</div>
					 <c:forEach items="${bdMyList}" var="board">
						 <div class="row">
							<span class="cell col1">${board.boardNo}</span>
							<span class="cell col2" onclick="location.href='/board/detail/${board.boardNo}'">${board.boardTitle }</span>
							<span class="cell col3">${board.userId }</span>
							<span class="cell col4">${board.regDate }</span>
							<span class="cell col5">${board.updDate }</span>
							<span class="cell col6">
							<c:if test="${loginUser.userId==board.userId }">
								
								<button id="updBtn" style="color: white;background: blue;" onclick="location.href='/board/update/${board.boardNo}'" >수정</button>
								<button id="delBtn" style="color: white;background: red;" onclick="location.href='/board/delete/${board.boardNo}'" >삭제</button>
							</c:if>
							</span>
						</div>
					 </c:forEach>
		    </div>
		    
		     <div align="center">
                    <table>
						<tr>
						    <c:if test="${pageMaker.prev}">
						    <td>
						        <a href='<c:url value="/board/mylist?page=${pageMaker.startPage-1}"/>'>&laquo;</a>
						    </td>
						    </c:if>
						    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
						    <td>
						        <a href='<c:url value="/board/mylist?page=${idx}"/>'>${idx}</a>
						    </td>
						    </c:forEach>
						    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
						    <td>
						        <a href='<c:url value="/board/mylist?page=${pageMaker.endPage+1}"/>'>&raquo;</a>
						    </td>
						    </c:if>
						</tr>
					</table>
             </div>	  
	</div>
	
	<div style="margin-top: 30px" align="center" class="container-1">
			<button onclick="location.href='/board/write'">글쓰기</button>
			<button style="color: white;background: green;" onclick="location.href='/board/mylist'">내가 쓴 글 목록</button>
	</div>
</body>
</html>