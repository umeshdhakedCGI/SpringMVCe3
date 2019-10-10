<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.stackroute.keepnote.model.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="com.stackroute.keepnote.repository.NoteRepository" %>
<%@ page import="com.stackroute.keepnote.controller.NoteController" %>
<%@ page import="org.springframework.context.ApplicationContext" %>
<%@ page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
	<form action="saveNote" method="post">
		<input type="text" placeholder="Id" name="noteId" >
		<input type="text" placeholder="Title" name="noteTitle">
		<input type="text" placeholder="Content" name="noteContent">
		<input type="text" placeholder="Status" name="noteStatus">
		<input type="submit" value="Save Note" name="button">
	</form>
<br>

	<form action="deleteNote">
		<input type="text" placeholder="Enter id to delete" name="noteId">
		<input type="submit" value="Delete" name="button">
	</form>


<%--	<%--%>
<%--	String str = request.getParameter("button");--%>

<%--	%>--%>
<%--	<c:set var="STR" value="<%=str %>"/>--%>
<%--	<c:if test="${STR!=null}">--%>

<%--		<form action="deleteNote">--%>
<%--			<input type="text" placeholder="Enter id to delete" name="noteId">--%>
<%--			<input type="submit" value="Delete" name="button">--%>
<%--		</form>--%>

<%--	</c:if>--%>






	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->



<c:forEach items="${notes}" var="note">
<div style="text-align: center">
	<tr>
	<td>Note id is : ${note.getNoteId()} |</td>
	<td> Notes title is : ${note.getNoteTitle()} |</td>
	<td> Notes content is : ${note.getNoteContent()} |</td>
	<td> Notes status is : ${note.getNoteStatus()} |</td>
	<td> Note created at : ${note.getCreatedAt()} </td>
	</tr>
</div>
</c:forEach>


</body>
</html>