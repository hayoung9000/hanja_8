<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8-">
<title>Insert title here</title>
<style>
body{
	background-image: url("image/hanji.jpg");
}
#score{
	color:red;
	font-size:80px;
	float:right;
}
#box{
	width:100%;
	margin-bottom:80px;
	clear:both;
}
#hanja{
text-align:center;
	font-family: ±Ã¼­; 
	font-size:80px;
	margin-bottom:2px;
}
#left{
	margin-left:800px;
}
#exam{
	width:100%;
	margin-left:700px;
}
a{
	text-decoration:none;
	color:black;
	margin-left:50px;
}
</style>
</head>
<body>
<%
int score=0;
int cnt=0;
String file = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/hanja.txt";
String file2 = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/score.txt";
String file3 = "D:/jsp_hanja-master/encoding/WebContent/WEB-INF/cnt.txt";
BufferedReader br = new BufferedReader(new FileReader(file));
BufferedReader br2 = new BufferedReader(new FileReader(file));
BufferedReader br_sc = new BufferedReader(new FileReader(file2));
BufferedReader br_cnt = new BufferedReader(new FileReader(file3));
String str_cnt=br_cnt.readLine();
if(str_cnt!=null){
	cnt=Integer.parseInt(str_cnt);
}
br_cnt.close();

int r=0;
String str = "";
ArrayList<String> answer = new ArrayList<String>();
ArrayList<String> hanja = new ArrayList<String>();
while((str = br.readLine())!=null){
	hanja.add(str);
	String[] txtArr = str.split(",") ;
	answer.add(txtArr[2]);
}
br.close();

String str_sc=br_sc.readLine();
br_sc.close();
score=Integer.parseInt(str_sc);



if(cnt<answer.size()){
%>
 <div id="score">
	 	<%=score %>
	 </div>
<%
	str=hanja.get(cnt);
	 String[] txtArr = str.split(",") ;
	 %>
	 <div id="box">
	 	<p id="hanja"><%=txtArr[0] %></p>
	 	<span id="left"><%=txtArr[1] %></span>
	 </div><%
	 String as[] = new String[4];
	 as[0]=txtArr[2];
	 for(int i=1;i<as.length;i++){
		 r=(int) (Math.random() * answer.size());
		 as[i] = answer.get(r);
		 for(int j=0;j<i;j++){
			 if(as[i].equals(as[j])){
				 i--;
				 break;
			 }
		 }
	 }
	 String sum="";
	 for(int i=0;i<4;i++){
		 r=(int) (Math.random() * 4);
		 sum=as[i];
		 as[i]=as[r];
		 as[r]=sum;
	 }
	 %><div id="exam"><%
	 for(int j=0;j<4;j++){
		 if(as[j].equals(txtArr[2])){
			 %><a class="true" href="gameProc_true.jsp"><%=as[j] %></a>
			 <%
		 }else{
			 %><a class="false" href="gameProc_false.jsp"><%=as[j] %></a>
		 <%}
	 }
	 %></div><%
br2.close();

}
else{
	response.sendRedirect("game_end.jsp?score="+score);
}
%>
</body>
</html>