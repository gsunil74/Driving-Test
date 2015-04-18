<%-- 
    Document   : newjsplogin
    Created on : 14-Apr-2015, 10:52:05 PM
    Author     : c0631942
--%>

<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    String user_type = request.getParameter("user_type");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bokka", "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and pass='" + pwd + "' and user_type='" + user_type + "'");
    if (rs.next()) 
    {
        if(user_type.equalsIgnoreCase("user"))
        {
            session.setAttribute("uid", rs.getInt("id"));
            session.setAttribute("userid", userid);
            response.sendRedirect("successuser.jsp");
        }
        else
        {
            session.setAttribute("userid", userid);
            response.sendRedirect("successadmin.jsp");
        } 
    }
    else 
    {
        out.println("Invalid password <a href='index_1.jsp'>try again</a>");
    }
%>