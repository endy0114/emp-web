<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<body>
	<div>
		<h2>新用户注册</h2>
		<sf:form method="POST" modelAttribute="user" action="register.do">
			<fieldset>
				<table cellspacing="0">
				<tr>
					<th><label for="user_full_name">用户名:</label></th>
					<td><sf:input path="userName" size="15" id="user_full_name" /></td>
				</tr>
				<tr>
					<th><label for="user_aliasesName_name">别名:</label></th>
					<td>
						<sf:input path="aliasesName" size="15" maxlength="15" id="user_screen_name" /> 
						<small id="username_msg">Nospaces,please.</small>
					</td>
				</tr>
				<tr>
					<th><label for="user_password">密码:</label></th>
					<td>
						<sf:password path="password" size="30" showPassword="true" id="user_password" /> 
						<small>6 characters or more(betricky!)</small>
					</td>
				</tr>
				
				</table>
			</fieldset>
			<button type="submit">注册</button>
		</sf:form>
	</div>
</body>
</html>