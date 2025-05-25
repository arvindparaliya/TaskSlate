<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TaskSlat : Home page</title>
	
	<%@ include file="all_js_css.jsp"%>

</head>
<body>

	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br/>
		
		<div class="card">
		
			<img alt=" " class = "img-fluid mx-auto"
			style="max-width: 450px;"
			src="img/notes.png"/>
			
			<h1 class="text-primary text-uppercase text-center mt-3">Start to add your tasks</h1>
			
			<div class="container text-center">
				<button class="btn btn-outline-primary">Start here</button>
			</div>
			
		</div>
		
	</div>

</body>
</html>

