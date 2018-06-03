<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body{
   background-image: url("image/hanji.jpg");
   }
#title{
	font-family: 궁서; 
	font-size:70px;
	margin-top:25px;
	margin-bottom: 200px;
}
#but{
	font-family: 궁서; 
	font-size:50px;
}
#but a{
	color:black;
	text-decoration: none;
}
</style>
</head>
<body>
<%
String file = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/score.txt";
int score=0;
PrintWriter pw = new PrintWriter(new FileWriter(file));
pw.println(score);
pw.close();

String file2 = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/cnt.txt";
int cnt=0;
PrintWriter pw2 = new PrintWriter(new FileWriter(file2));
pw2.println(cnt);
pw2.close();
%>
<center>
<p id="title">한자 8급 배우기</p>
<p id="but"><a href="study.jsp">한자 배우기</a></p>
<p id="but"><a href="game_form.jsp">한자 맞추기</a></p>
</center>
</body>
</html>