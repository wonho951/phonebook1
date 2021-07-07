<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
    
<%
	//파라미터에서 꺼내기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	System.out.println(name + "," + hp + "," + company);
	
	
	//vo로 묶기
	PersonVo personVo = new PersonVo(name, hp, company);

	//저장하기
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personInsert(personVo);
	
	
	
	
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>