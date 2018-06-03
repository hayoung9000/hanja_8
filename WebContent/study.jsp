<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
	margin:0px;
	padding:0px;
}
body{
   background-image: url("image/hanji.jpg");
   padding-left:80px;
   padding-top:100px;
   }
#box{
	display: inline-block;
	width:300px;
	margin-bottom:80px;
}
#hanja{
	font-family: 궁서; 
	font-size:80px;
	margin-bottom:2px;
}
#left{
	margin-left:17px;
	margin-right:5px;
}
#but a{
	color:black;
	text-decoration: none;
	font-family: 궁서; 
	font-size:20px;
}
#but{
	margin-bottom:50px;
}
</style>
</head>
<body>
<%
String file = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/hanja.txt";
BufferedReader br = new BufferedReader(new FileReader(file));
String str = "";
while ((str = br.readLine()) != null) {
	 String[] txtArr = str.split(",") ;
	 %>
	 <div id="box">
	 	<p id="hanja"><%=txtArr[0] %></p>
	 	<span id="left"><%=txtArr[1] %></span>
	 	<span id="right"><%=txtArr[2] %></span>
	 </div><%
}
br.close();
%>
<p id="but"><a href="game_form.jsp">한자 맞추기</a></p>
</body>
</html>