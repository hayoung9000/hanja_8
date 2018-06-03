<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
	*{
		margin:0px;
	}
	body{
		background-image: url("image/hanji.jpg");
	}
	#result{
		width:100%;
		font-size:80pt;
		margin-bottom:50px;
		margin-top:150px;
	}
	#score{
		display:inline;
		color:red;
		margin-right:10px;
	}
	a{
		text-decoration:none;
		color:black;
	}
</style>
</head>
<body>
<%
String score = request.getParameter("score");
%>
<center>
<div id="result">
<p id="score"><%=score %></p>점
</div>
<a href="restudy.jsp">틀린 문제 공부하기</a>
</center>
</body>
</html>