# TaskSlate

A lightweight Java web application to manage your daily tasks or notes. Built with **JSP**, **Servlets**, and **Hibernate**, styled using **Bootstrap**, and connected to a **MySQL** database. Deployed using **Apache Tomcat**.

---

## Features

- Add a task with a title, content, and date.
- View all tasks in a clean, responsive layout.
- Data stored in a MySQL database using Hibernate ORM.
- Simple and user-friendly UI with Bootstrap.
- Deployed on Apache Tomcat.

---

## Tech Stack

- **Java 21**
- **Hibernate ORM (5.6.15.Final)**
- **MySQL 8+** (configured to run on port `3316`)
- **Apache Tomcat 10.1.41**
- **JSP & Servlets**
- **Bootstrap 5**

---

## Prerequisites

- JDK 21 installed
- MySQL server running (change port if not using 3316)
- Apache Tomcat 10 installed
- Eclipse (or any Java EE-compatible IDE)

---

## Database Setup

1. Open MySQL and run:

  <pre> ```sql
   CREATE DATABASE task_db;
    </pre>
    
2. Update hibernate.cfg.xml with your MySQL username, password, and port (default in this project is 3316).

---

## How to Run the App

Clone the repository:

- git clone https://github.com/arvindparaliya/TaskSlate.git
- Import the project into Eclipse or your IDE.
- Set up Apache Tomcat in your IDE and add the project to the server.
- Run the server.
- Open your browser and navigate to:
 http://localhost:8080/TaskSlate/

---

## App Preview
Here’s how the app looks:

---

## Notes

- The Task entity uses Random() to generate task IDs. For production, consider using auto-increment.
- Hibernate’s built-in connection pooling is okay for development only.
- If you see an error like No identifier specified for entity, check for @Id in your entity class.
- Always check the Tomcat console logs if something doesn’t work as expected.

---

## License
- This project is open-source and free to use. No restrictions. Modify and build upon it as you like.

    
