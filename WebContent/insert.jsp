<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>    
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
    
<%

	request.setCharacterEncoding("UTF-8");	//post일때 한글 깨지는 경우 이거 해줌.

	//PersonVo personVo = new PersonVo(name, hp, company); 어차피 쓸거 위에서 많이 선언함.
	PhoneDao phoneDao = new PhoneDao();

	//파라미터에서 꺼내기
	String name = request.getParameter("name");	// getParameter(String param) 파라미터 꺼내는거.
												// 주어진 이름의 파라미터가 갖는 값을 리턴. 지정된 파라미터 없는 경우에는 null을 리턴.
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	System.out.println(name + "," + hp + "," + company);
	
	
	//vo로 묶기
	PersonVo personVo = new PersonVo(name, hp, company);

	//저장하기
	
	phoneDao.personInsert(personVo);
	

	// 	//리스트 가져오기	--> 리다이렉트로 대체

	// 	List<PersonVo> personList= phoneDao.getPersonList();//리스트 import 하기. personVo는 메모리에 위에서 올렸기 때문에 새로 올릴 필요없음.
	
	// 	System.out.println(personList.toString());
	

	response.sendRedirect("./list.jsp");	//다시 list.jsp로 요청하는것.


	
%>    

<%-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 위에서 정보 입력하면 리스트에 저장하고 다시 리스트 가져와서 이 밑에 내용으로 출력해서 화면에 보여줌. -->
	<h1>전화번호 리스트-Insert-</h1>
	<p>입력한 정보 내역입니다.</p>
	
	
		<% for(int i = 0; i <personList.size(); i++){ 
		%>	

 			<table border = "1">
 				<tr> 
 					<td>이름</td>
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
	


</body>
</html>
--%>