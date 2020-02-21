<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Login</title>
		
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
		
		
		.main{
			margin-top : 230px;
			align-items : center;
		}
	
	</style>
</head>
<body>

<h1 align="center">
	로그인 화면  
</h1>

	<div class="nav">
		<div class="nav-right-items">	
			<div class="nav-item">		
				<a href="/views/loginPageGo" style="text-decoration:none">로그인</a>
			</div>
			<div class="nav-item">	
				<a href="/views/memberPageGo" style="text-decoration:none">회원가입</a>			
			</div>
			<div class="nav-item">
				<a href="/board/list" style="text-decoration:none">게시판목록</a>
			</div>
		</div>	
	</div>
	
	
	<div>
		<div>
			${ loginResult }
		</div>
		<div>
			<p>${ loginUser.userName } 님 환영합니다.</p>
		</div>
	</div>

</body>
</html>