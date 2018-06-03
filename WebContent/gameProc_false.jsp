<%@page import="java.util.ArrayList"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String file = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/score.txt";
String file2 = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/cnt.txt";
String file3 = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/wrong.txt";
String hanja = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/hanja.txt";

ArrayList<String> han = new ArrayList<String>();


BufferedReader br = new BufferedReader(new FileReader(file));
BufferedReader br2 = new BufferedReader(new FileReader(file2));
BufferedReader br_hanja = new BufferedReader(new FileReader(hanja));

String ja="";
while((ja=br_hanja.readLine())!=null){
	han.add(ja);
}
br_hanja.close();

String str=br.readLine();
br.close();
int score=0;
score=Integer.parseInt(str);
score-=30;
PrintWriter pw = new PrintWriter(new FileWriter(file));
pw.println(score);
pw.close();

String c=br2.readLine();
br2.close();
int cnt=0;
cnt=Integer.parseInt(c);

PrintWriter pw3 = new PrintWriter(new FileWriter(file3,true));
pw3.println(han.get(cnt));
pw3.close();


cnt++;
PrintWriter pw2 = new PrintWriter(new FileWriter(file2));
pw2.println(cnt);
pw2.close();

response.sendRedirect("game_form.jsp");
%>
</body>
</html>