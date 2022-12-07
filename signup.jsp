<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dao.UserDAO" %>
<%
	request.setCharacterEncoding("utf-8");
%>
	<jsp:useBean id="user" class="dao.UserBean">
		<jsp:setProperty name="user" property="*" />
	</jsp:useBean>
<%  
	
    UserDAO dao = new UserDAO();
	String url="";
	String notice="";
	String btnstr="";
    
   if (dao.insert(user)) {
       notice="회원 가입 완료되었습니다.";
       btnstr="로그인하기";
       url="loginForm.jsp";
   }
   else {
       notice="회원 가입 도중 오류가 발생했습니다.";
       btnstr="돌아가기";
       url="signupForm.jsp";
   }
%>
<html>
<body>
<table align=center>
<tr>
<td>
<h1 align=center><%=notice %></h1>
</td>
</tr>
<tr>
<td align=center>
<input type="button" onclick="location.href = '<%=url %>'" value="<%=btnstr%>">
<td>
</tr>
</table>
</body>
</html>
