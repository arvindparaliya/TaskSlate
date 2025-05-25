package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Task;
import com.helper.FactoryProvider;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public DeleteServlet() {
        super();      
    }
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		try
		{
			int taskId = Integer.parseInt(req.getParameter("task_id").trim());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction tx = s.beginTransaction();
			Task task = (Task) s.get(Task.class, taskId);
			s.delete(task);
			tx.commit();
			s.close();
			
			resp.sendRedirect("all_notes.jsp");
			
		}catch (Exception e) 
		{
			System.out.println("Oops! Something went to wrong" + e.getMessage());
		}
		
			
	}

}
