<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.UserDAO" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String uid = request.getParameter("id");
	UserDAO dao = new UserDAO();
	if(dao.exists(uid)){
%>
	<h4>이미 사용중인 ID 입니다.</h4> 
<%		
		}
	else{
%>
		<h4>사용 가능한 ID 입니다.</h4>
<%}
%>
<a href="#" onclick="self.close()">닫기</a>