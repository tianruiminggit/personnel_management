<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="myjs.jsp" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<script>
		console.log("socket");
		var ws = new WebSocket("ws://127.0.0.1:8080/personnel_management/chat");
		ws.onopen = function() {
			ws.send("我是客户端");
		}
	</script>
</body>
</html>