<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<% request.setCharacterEncoding("utf-8"); %>
<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>쪽지함</title>

</head>
<body>
<div >
	<p style="background-color:#03cf5d; padding-top:10px; padding-bottom:10px;color:white"> &nbsp; 쪽지함 </p>
</div>

<div class="container">

<section>
	<table >
		<tr > 
			<td style="cursor:default;font-weight:bolder;padding-top:5px;font-size:14px"> 
			<span id="received" > <img src="${path }/resources/images/msgR.PNG"> 받은 쪽지함 </span>&nbsp; | &nbsp; </td> 
			<td style="cursor:pointer;padding-top:5px;font-size:13px"> 
			<span id="send"> <img src="${path }/resources/images/msgS.PNG"> 보낸 쪽지함 </span></td>	
			
			<td align="right"> 
				<div align="right">
				&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;
				<a href="" class="btn btn-default btn-sm">삭제</a>
				</div>
			</td>		
		</tr>
	</table>

	<hr style="border-top:1px solid #BDBDBD; border-bottom:1px"/>
	
	
	<div id="received_span" style="display:active">
		<%-- <u:receivedMail /> --%>
		<jsp:include page="receivedMail.jsp" />
	</div>
	
	<div id="send_span" style="display:none">
		<%-- <u:sendMail /> --%> 
		<jsp:include page="sendMail.jsp" />
	</div>
</section>