# 📊 Database and Java Web Application - JSP & MySQL

## 📌 Overview
This project is a **JSP-based Web Application** that provides features such as **user authentication, event management, profile management, and reminders**. It integrates with **MySQL** for data storage and follows a **JSP-Servlet architecture**.

### 🎯 Features
✅ User and Admin login system  
✅ Event creation, update, and deletion  
✅ Profile management for users and admins  
✅ Search functionality for events and users  
✅ MySQL database integration  
✅ Session-based authentication  
✅ Responsive UI with JSP and HTML  

---

## 📂 Project Structure
```
database-java-project/
│── Database-and-Java-Project-main/
│   ├── index.jsp                   # Homepage
│   ├── user_login.jsp              # User Login Page
│   ├── admin_after_login.jsp       # Admin Dashboard
│   ├── user_registration.jsp       # User Registration Page
│   ├── user_profile_page.jsp       # User Profile Management
│   ├── admin_event_page.jsp        # Admin Event Management
│   ├── user_event_page.jsp         # User Event Dashboard
│   ├── connect.jsp                 # Database Connection
│   ├── search.jsp                  # Search Functionality
│   ├── about_us_before_login.jsp   # About Page
│   ├── sql_database.sql            # SQL Database Script
│── assets/
│   ├── css/
│   ├── js/
│── README.md  # Project Documentation
```

---

## 🛠️ Installation & Setup
### Prerequisites
- Install **Java JDK 8+**
- Install **Tomcat Server** (Apache Tomcat 9 recommended)
- Install **MySQL Server**
- Install **Eclipse/IntelliJ IDEA** (Optional for development)

### 🚀 Running the Application
1. **Set up MySQL Database:**
   - Create a database named `database_project`
   - Import the `sql_database.sql` file into MySQL.

2. **Configure Database Connection:**
   - Open `connect.jsp` and update database credentials:
     ```jsp
     <%
     String url = "jdbc:mysql://localhost:3306/database_project";
     String user = "root";
     String password = "your_password";
     %>
     ```

3. **Deploy to Tomcat Server:**
   - Place the extracted folder in `webapps/` directory of Tomcat.
   - Start Tomcat and navigate to:
     ```sh
     http://localhost:8080/Database-and-Java-Project-main/index.jsp
     ```

---

## 🔄 Core Features
| Feature | Description |
|---------|-------------|
| **User Login & Registration** | Users can register, log in, and manage their profiles |
| **Event Management** | Admins can create, edit, and delete events |
| **Reminders & Notifications** | Users can set and manage reminders |
| **Search Functionality** | Users can search for events and other users |

---

## 🏗️ Future Enhancements
🔹 Implement JWT-based authentication  
🔹 Improve UI with Bootstrap or Tailwind CSS  
🔹 Convert into a Spring Boot application  
🔹 Add REST API support for mobile integration  

---

## ✉️ Contact
For any queries, reach out to:
- **Vennela Kothakonda** - Developer

---

Happy Coding! 🚀
