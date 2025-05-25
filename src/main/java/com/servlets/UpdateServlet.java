package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Task;
import com.helper.FactoryProvider;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public UpdateServlet() {
        super();
    }


	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try
		{
			
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			int taskId = Integer.parseInt(req.getParameter("taskId").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			
			Task task = (Task) s.get(Task.class, taskId);
			
			task.setTitle(title);
			task.setContent(content);
			task.setAddedDate(new Date());
			
			tx.commit();
			s.close();
			
			resp.sendRedirect("all_notes.jsp");
			
		}
		catch (Exception e) 
		{
			System.out.println("Oops! Something went to wrong" + e.getMessage());
		}
	}

}
