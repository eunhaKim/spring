<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>index.jsp</title>
  <jsp:include page="/WEB-INF/views/include/bs4.jsp" />
  <script>
  	'use strict';
  	
  	function postCheck(no){
  		if(no == 7) myform.action="${ctp}/0611/test7";
  		else if(no == 8) myform.action="${ctp}/0611/test8";
  		
  		myform.submit();
  	}
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>index.jsp</h2>
  <hr/>
  <p>
    넘어온 값 : ${data}
  </p>
  <p>
    <a href="${ctp}/0611/test1?mid=hkd1234&pwd=1234" class="btn btn-success">test1.jsp</a>
    <a href="${ctp}/0611/test2?mid=kms1234&pwd=4321&age=21&gender=1" class="btn btn-info">test2.jsp</a>
    <a href="${ctp}/0611/test3?mid=kms1234&pwd=4321&age=21" class="btn btn-warning">test3.jsp</a>
    <a href="${ctp}/0611/test4?mid=lkj1234&pwd=1357&age=25&gender=3" class="btn btn-secondary">test4.jsp</a>
    <a href="${ctp}/0611/test5?mid=lkj1234&pwd=1357&age=25&gender=3" class="btn btn-danger">test5.jsp</a>
    <a href="${ctp}/0611/test6?mid=snm1234&pwd=1357&age=25&gender=3" class="btn btn-dark">test6.jsp</a>
    <hr/>
    <!-- <form name="myform" method="post" action=""> -->
    <form name="myform" method="post">
    	<table class="table table-bordered">
    		<tr>
    			<th>아이디</th>
    			<td>
    				<input type="text" value="admin" name="mid" class="form-control" />
    			</td>
    		</tr>
    		<tr>
    			<th>비밀번호</th>
    			<td><input type="password" value="1234" name="pwd" class="form-control" /></td>
    		</tr>
    		<tr>
    			<th>성명</th>
    			<td>
    				<input type="text" value="관리자" name="name" class="form-control" />
    			</td>
    		</tr>
    		<tr>
    			<th>별명</th>
    			<td>
    				<input type="text" value="관리맨" name="nName" class="form-control" />
    			</td>
    		</tr>
    		<tr>
    			<th>나이</th>
    			<td><input type="number" name="age" value="22" class="form-control" /></td>
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
    	</table>
    </form>
    <a href="${ctp}/0611/test9" class="btn btn-outline-success">test9.jsp</a>
    <a href="${ctp}/0611/test10" class="btn btn-outline-primary">test10.jsp</a>
    <a href="${ctp}/0611/test11" class="btn btn-outline-secondary">test11.jsp</a>
    <hr/>
    (path variable)
    <a href="${ctp}/0611/test12/atom1234/1234" class="btn btn-outline-dark">test12.jsp</a>
    <a href="${ctp}/0611/test13" class="btn btn-info">test13.jsp</a>
    <a href="${ctp}/0611/test14" class="btn btn-danger">test14.jsp</a>
    <a href="${ctp}/0611/test15" class="btn btn-outline-danger">test15(메세지)</a>
    <hr/>
    <hr/>
    <a href="${ctp}/home" class="btn btn-primary">돌아가기</a>
  </p>
</div>
<p><br/></p>
</body>
</html>