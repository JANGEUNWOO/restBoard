<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>로그인 화면</title>
</head>
<body>

<h1 align="center">
	로그인 화면  
</h1>
<hr>
<br>
<br>
	<div align="center">
		<table>
			
			
		
			<tr>
				<td><label for="userId">userId</label></td>
				<td><input type="text" value="jew8960" id="userId"></td>
			</tr>
			<tr>
				<td><label for="password">password</label></td>
				<td><input type="text" value="1234" id="password"></td>
			</tr>
			
		</table>
				<br>
				<br>
			    <button style="color: white;background: green;">로그인</button>
				<button style="color: white;background: green;" onclick="location.href='/memberPageGo'">회원가입</button>
	</div>

</body>
</html>