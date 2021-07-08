<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<% 

	PhoneDao phoneDao = new PhoneDao();


	//파라미터에서 id값 추출
	
	String id =request.getParameter("id");
	int personId = Integer.parseInt(id);
	System.out.println(personId);
	
	
	//Dao에서 한사람(id)의 정보 가져오기.
	PersonVo personVo = phoneDao.getPerson(personId);
    System.out.println(personVo.toString());

	//System.out.println();
	
	//person 정보 + html 작성

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호수정</h1>
	<p>수정화면 입니다. 아래 항목을 수정하고 "수정"버튼을 클릭하세욤</p>
	<form action ="./update.jsp" method="get">
       이름(name): <input type="text" name="name" value="<%=personVo.getName() %>"> <br>
       핸드폰(hp): <input type="text" name="hp" value="<%=personVo.getHp() %>"> <br>
       회사(company): <input type="text" name="company" value="<%=personVo.getCompany() %>"> <br>
       <input type = "text" name = "id" value = "<%= personVo.getPersonId() %>">	<!-- hidden으로 숨기는게 좋음. -->
       
       <button type="submit">수정</button>
   </form>

		
	


</body>
</html>