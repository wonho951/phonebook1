<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ page import = "com.javaex.dao.PhoneDao" %>


    
   
<%
	PhoneDao phoneDao = new PhoneDao();	//여러번 사용할 수도 있으니 위에서 선언    


	//파라미터 꺼내기
	int personId = Integer.parseInt(request.getParameter("id"));	//id는 string형이므로 integer사용
	//여기까지 하고 테스트해봄
	//System.out.println(personId);
	
	//phoneDao.delete(3) 사용해서 삭제
	int count = phoneDao.personDelete(personId);
	//System.out.println(count);
	
	

	//리다이렉트로 요청(list.jsp)
    response.sendRedirect("./list.jsp");
    
    
    
    
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