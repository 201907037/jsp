<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.UserDAO" %>
<!DOCTYPE html>
<html>


<script type="text/javascript">
	
	function id_check(id) {
		if(id==""){
			alert("아이디를 입력하세요");
			return;
		}
		url = "checkid.jsp?id="+id;
		window.open(url,"check","width=150","height=100")
	}
	function ps_check(ps1,ps2){
		if(ps1!=ps2){
			alert("비밀번호가 일치하지 않습니다.");
			return
		}
	}
</script>
<head>
<meta charset="UTF-8">
</head>
<body>
<form action="signup.jsp" method="post">
<table align=center>
<tr><td colspan=2 align=center height=40><b>회원가입</b><td></tr>
<tr>
    <td align=right>아이디&nbsp;</td>
    <td><input type="text" name="id" placeholder="Email address"  required>&nbsp;
    <input type="button" onclick="id_check(this.form.id.value)" value="중복확인">
    </td>
</t>
<tr>
    <td align=right>패스워드&nbsp;</td>
    <td><input type="password" name="ps" required></td>
</tr>
<tr> 
    <td align=right>패스워드(확인)&nbsp;</td>
    <td><input type="password" name="ps2" required></td>
</tr>
<tr>
    <td align=right>이름&nbsp;</td>
    <td><input type="text" name="name" required onclick="ps_check(this.form.ps.value,this.form.ps2.value)"></td> 
</tr>
<tr>
    <td colspan=2 align=center height=50>
        <input type="submit" value="회원가입하기">
    </td>
</tr>
<tr>
	<td colspan=2 align=center height=50>
	<input type="button" onclick="location.href = 'loginForm.jsp'" value="로그인 하기">
	</td>
</tr>
</table>
</form>
</body>
</html>