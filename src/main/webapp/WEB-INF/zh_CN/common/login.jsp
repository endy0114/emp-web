<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<form action="login.do" method="post">
	<label>用户名：</label><input type="text" id="userName" name="userName"><br>
	<label>用户名：</label><input type="password" id="password" name="password"><br>
	<button type="reset">重置</button>&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit">登录</button>
	&nbsp;&nbsp;<a href="regist.do">注册新用户</a>
</form>
</body>
</html>