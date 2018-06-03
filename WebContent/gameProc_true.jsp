<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
String file = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/score.txt";
BufferedReader br = new BufferedReader(new FileReader(file));
String str=br.readLine();
br.close();
int score=0;
score=Integer.parseInt(str);
score+=50;
PrintWriter pw = new PrintWriter(new FileWriter(file));
pw.println(score);
pw.close();
response.sendRedirect("game_form.jsp?send="+score);
%>
</body>
</html>