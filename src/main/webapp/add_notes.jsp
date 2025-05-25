<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Notes</title>

<%@ include file="all_js_css.jsp"%>

</head>
<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br/>

		<h1>Add your task here</h1>
		<br/>


		<form action="SaveNoteServlet" method="post">

			<div class="form-group">
				<label for="title">Task Title</label> <br/> 
				<input name="title"
				required type="text"
				class="form-control" 
				id="title" aria-describedby="emailHelp"
				placeholder="Enter title">
			</div>
			<br />

			<div class="form-group">
				<label for="content">Task Content</label><br/>
				<textarea 
				name="content"
				required id="content"
				placeholder="Enter content"
				class="form-control" 
				style="height: 300px">
				</textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>

	</div>

</body>
</html>