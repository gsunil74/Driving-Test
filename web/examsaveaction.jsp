<%-- 
    Document   : examsaveaction.jsp
    Created on : Apr 18, 2015, 4:15:54 PM
    Author     : c0631942
--%>

<%@page import="java.sql.Statement"%>
<%@page import="db.dbconn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String exam_name=request.getParameter("exam_name");
            String exam_desc=request.getParameter("exam_desc");
            Connection con=dbconn.getconnection();
            Statement st=con.createStatement();
            st.execute("insert into exam_list(ExamName, ExamDescription)values('"+exam_name+"','"+exam_desc+"')");
            response.sendRedirect("addexam.jsp?st=exam added successfully");
            
            
            %>
    </body>
</html>
