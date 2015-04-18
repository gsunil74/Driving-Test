<%-- 
    Document   : registration
    Created on : 14-Apr-2015, 10:51:18 PM
    Author     : c0631942
--%>

<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String email = request.getParameter("email");
    String user_type = request.getParameter("user_type");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bokka", "root", "");
    Statement st = con.createStatement();
    int i = st.executeUpdate("insert into members(first_name, last_name, email, uname, pass,user_type, regdate) values ('" + fname + "','" + lname + "','" + email + "','" + user + "','" + pwd + "','" + user_type + "', CURDATE())");
    if (i > 0) 
    {
        response.sendRedirect("welcome.jsp");
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
%>