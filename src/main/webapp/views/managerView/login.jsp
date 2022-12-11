<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="wrapperAdmin">
	<%@include file="layout/header.jsp"%>
	<div id="Custome-div">
		<form id="Customer-form"
			action="${pageContext.request.contextPath}/managerHome" method="POST">
			<div>
				<div id="Textbox">
					<input type="text" name="username" id="username"
						placeholder="Tên đăng nhập" autofocus="1"
						aria-label="Tên đăng nhập">
				</div>
				<div id="Textbox">
					<input type="password" name="password" id="password"
						placeholder="Mật khẩu" aria-label="Mật khẩu">
				</div>
			</div>
			<p style="color: red;">${ errorString }</p>
			<div id="Button">
				<button value="login" name="login" type="submit">Đăng nhập</button>
			</div>
		</form>
	</div>
</div>
