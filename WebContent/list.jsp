<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>




<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
	
	//System.out.println(personList.toString());

%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>전화번호 리스트</h1>
		<p>입력한 정보 내역입니다.</p>		


		<%
			for(int i = 0; i < personList.size();i++) {	//요청을 하면 자바 언어로 가는게 아니라 직접 이름 전화번호등이 찍혀서 감.
							
	 	%>
		 		<table border = "1">
					<tr>
						<td>이름</td>
						<td><%= personList.get(i).getName() %></td>
					</tr>
				
					<tr>
						<td>핸드폰</td>
						<td><%= personList.get(i).getHp() %></td>
					</tr>
				
					<tr>
						<td>회사</td>
						<td><%= personList.get(i).getCompany() %></td>
					</tr>		
				</table>
				<br>
		 		
	 	<%
	 		}	//for문 안에 html을 넣어야 하므로 괄호를 따로 빼줌.
		%>
		

	</body>
</html>