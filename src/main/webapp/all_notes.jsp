<%@page import="org.hibernate.Query"%>
<%@page import="com.entities.Task"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Tasks : TaskSlate</title>
<%@ include file="all_js_css.jsp"%>
</head>
<body>

	<div class="container py-4">
		<%@ include file="navbar.jsp"%>

		<h1 class="text-uppercase mt-4 mb-3">All Tasks</h1>

		<div class="row">
			<div class="col-12">

				<%
                    Session s = null;
                    List<Task> list = null;
                    try {
                        s = FactoryProvider.getFactory().openSession();
                        Query q = s.createQuery("from Task");
                        list = q.list();
                        
                        if (list == null || list.isEmpty()) {
                %>
                            <div class="alert alert-info">No tasks found.</div>
                <%
                        } else {
                            for (Task task : list) {
                %>

				<div class="card mt-3">
					<div class="card-body">
						<div class="d-flex align-items-center">
							<img src="img/writing.png" style="max-width: 50px;" class="me-3"
								alt="...">
							<div>
								<h5 class="card-title mb-1"><%= task.getTitle() %></h5>
								<p class="card-text mb-2"><%= task.getContent() %></p>
								
								<p><b class="text-primary"><%= task.getAddedDate() %></b><p/>

								<a href="DeleteServlet?task_id=<%= task.getId() %>"
									class="btn btn-danger">Delete</a>
								<a href="edit.jsp?task_id=<%= task.getId() %>"
									class="btn btn-primary">Update</a>
							</div>
						</div>
					</div>
				</div>

				<%
                            } 
                        } 
                    } catch (Exception e) 
                    {
                        out.println("<div class='alert alert-danger'>Something went wrong: " + e.getMessage() + "</div>");
                    } 
                    finally 
                    {
                        if (s != null) s.close();
                    }
                %>

			</div>
		</div>
	</div>

</body>
</html>
