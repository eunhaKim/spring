<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test10.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <script>
  	'use strict';
  	
  	if('${msg}' != "" && '${msg}' != null ) alert('${msg}')
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>회원가입</h2>
  <form method="post">
   	<table class="table table-bordered">
   		<tr>
   			<th>아이디</th>
   			<td>
   				<input type="text" value="${vo.mid }" name="mid" class="form-control" required/>
   			</td>
   		</tr>
   		<tr>
   			<th>비밀번호</th>
   			<td><input type="password" value="${vo.pwd }" name="pwd" class="form-control" required/></td>
   		</tr>
   		<tr>
   			<th>성명</th>
   			<td>
   				<input type="text" value="${vo.name }" name="name" class="form-control" required/>
   			</td>
   		</tr>
   		<tr>
   			<th>별명</th>
   			<td>
   				<input type="text" value="${vo.NName }" name="nName" class="form-control" required/>
   			</td>
   		</tr>
   		<tr>
   			<th>나이</th>
   			<td><input type="number" name="age" value="${vo.age }" class="form-control" required/></td>
   		</tr>
   		<tr>
   			<th>성별</th>
   			<td>
   				<input type="radio" name="strGender" id="strGender1" class="mr-1" value="남자"/>남자&nbsp;
   				<input type="radio" name="strGender" id="strGender2" class="mr-1" value="여자" checked/>여자
   			</td>
   		</tr>
   		<tr class="text-center">
   			<td colspan="2">
   				<input type="button" value="test7" onclick="postCheck(7)" class="btn btn-outline-success"/>
   				<input type="button" value="test8" onclick="postCheck(8)" class="btn btn-outline-primary"/>
   			</td>
   		</tr>
   		<tr class="text-center">
   			<td colspan="2">
   				<input type="submit" value="회원가입" class="btn btn-outline-success"/>
   				<input type="button" value="돌아가기" onclick="location.href='${ctp}/0611/index'" class="btn btn-outline-primary"/>
   			</td>
   		</tr>
   	</table>
   </form>
</div>
<p><br/></p>
</body>
</html>