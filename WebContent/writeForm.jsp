<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호 등록</h1>
	<p>
		전화번호를 등록하려면 <br>
		아래 항목을 기입하고 '등록' 버튼을 클릭하세요.
	</p>
	
	<form action= "./insert.jsp" method="get">	<!-- 메소드는 get,post방식 있음-->
												<!-- get방식은 localhost:8088/phonebook1/writeForm.jsp?name=최원호&hp=01029104696 이런식으로옴(파라미터값이 보임->파라미터 헤더에 있음) -->
												<!-- post방식은 localhost:8088/phonebook1/writeForm.jsp(파라미터값이 안보임-> 파라미터 바디로 이동함) -->
												<!-- post방식은 굳이 보여주지 않아도 되는 정보를 숨길때 사용(ex: 비밀번호 같은거) -->
		이름(name):<input type ="text" name="name" value=""> <br>		<!--value값은 사용자가 웹상에서 입력한 값이 들어간다.  --> 
		핸드폰(hp):<input type ="text" name="hp" value=""> <br>	<!-- name은 그냥 속성명일 뿐임 위에서는 우연히 변수명이랑 같았을 뿐임. -->
		회사(company):<input type ="text" name="company" value=""> <br>
		
<!-- 		<input type = "checkbox" name="pet" value = "dog"> 개<br>  -->
<!-- 		<input type = "checkbox" name="pet" value = "cat"> 고양이<br> -->
<!-- 		<input type = "checkbox" name="pet" value = "bird"> 새<br> -->
		
		<button type = "submit">등록</button>
	</form>
	
	
</body>
</html>