package com.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Task;
import com.helper.FactoryProvider;


@WebServlet("/SaveNoteServlet")
public class SaveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public SaveNoteServlet() {
        super();      
    }
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		try
		{
			//get title and content
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			Task task = new Task(title, content, new Date());
			
			//System.out.println(task.getId() + "," + task.getTitle());
			
			Session s = FactoryProvider.getFactory().openSession();
			Transaction ts = s.beginTransaction();
			s.save(task);
			ts.commit();
			s.close();
			resp.setContentType("text/html");
			PrintWriter out = resp.getWriter();
			out.println("<h1 style='color: green; text-align: center;'>Task is added successfully!</h1>");
			out.println("<h1 style='color: blue; text-align: center;'><a href=\"all_notes.jsp\">View all task</a></h1>");
	
			
		}catch (Exception e) 
		{
			System.out.println("Oops! Something went to wrong" + e.getMessage());
		}
		
			
	}

}
