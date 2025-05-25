<%@page import="com.entities.Task"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>

	<%@ include file="all_js_css.jsp"%>
	
</head>
<body>

<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>Edit your task</h1>
		<br/>
		<%
		int taskId = Integer.parseInt(request.getParameter("task_id").trim());
			Session s = FactoryProvider.getFactory().openSession();	
			Task task = (Task) s.get(Task.class, taskId);
		
			s.close();
		%>
		
				<!-- Form -->
		<form action="UpdateServlet" method="post">
		
		<input value="<%= task.getId() %>" name="taskId" type="hidden" />

			<div class="form-group">
				<label for="title">Note title</label> <br/> 
				<input name="title"
				required type="text"
				class="form-control" 
				id="title" aria-describedby="emailHelp"
				placeholder="Enter title">
				value= "<%= task.getTitle() %>"
			</div>
			<br />

			<div class="form-group">
				<label for="content">Note Content</label><br/>
				<textarea 
				name="content"
				required id="content"
				placeholder="Enter content "
				class="form-control" 
				style="height: 300px"><%= task.getContent() %>
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Task</button>
			</div>
		</form>
	</div>

</body>
</html>