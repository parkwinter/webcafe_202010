<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<div >
	<table style="font-size:13px">
		<tr style="background-color:#EAEAEA; border-bottom:1px solid #8C8C8C"> 
			<td width=25 style="padding-top:10px;padding-bottom:10px;padding-left:5px;border-right:1px solid #8C8C8C"> <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> </td>
			<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 받은 사람</td>
			<td width=285 style="border-right:1px solid #8C8C8C">&nbsp;  내용 - 기본 form</td>
			<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 받은 날짜 </td>
		</tr>
		
		<!-- db 연동해서 추가될 부분 -->
		<!-- <tr style=" border-bottom:1px solid #8C8C8C"> -->
			<!-- <td width=25 style="padding-top:10px;padding-bottom:10px;padding-left:5px;border-right:1px solid #8C8C8C"> <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> </td> -->
			<!-- <td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 길동쓰</td> -->
			<!-- <td width=285 style="border-right:1px solid #8C8C8C">&nbsp;  이거 테스트용이야</td> -->
			<!-- <td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; 2020-10-20 </td> -->
		<!-- </tr> -->
		
		<c:if test="${empty list }">
			<tr style=" border-bottom:1px solid #8C8C8C">
				<td colspan="4" > 보낸 쪽지가 없습니다. </td>
		</c:if>
		
		<c:if test="${not empty list }">
			<c:forEach var="message" items="${list }">
				<tr style=" border-bottom:1px solid #8C8C8C">
					<td width=25 style="padding-top:10px;padding-bottom:10px;padding-left:5px;border-right:1px solid #8C8C8C"> <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> </td>
					<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; ${message.m_receiver_nick }</td>
					<td width=285 style="border-right:1px solid #8C8C8C">&nbsp;  ${message.m_content }</td>
					<td width=80 style="border-right:1px solid #8C8C8C"> &nbsp; ${message.m_send_date } </td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
</div>
</body>
</html>