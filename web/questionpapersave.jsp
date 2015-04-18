<%-- 
    Document   : questionpapersave
    Created on : Apr 18, 2015, 4:44:53 PM
    Author     : c0631942
--%>

<%@page import="java.sql.ResultSet"%>
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
          Connection con=dbconn.getconnection();
                  Statement st=con.createStatement();
            int examid=Integer.parseInt(request.getParameter("exam_name"));
               int exid=0;
               int qno=0;
            ResultSet rs=st.executeQuery("select max(ExamId)as exid,max(QuestionNo)as qno from exam_question_bank where ExamId='"+examid+"'");
         
            while(rs.next())
            {
                exid=rs.getInt("exid");
                qno=rs.getInt("qno");
            }
            if(exid<=10)
            {
                   qno=qno+1;
            //int qno=Integer.parseInt(request.getParameter("qno") );
            String question=request.getParameter("question_desc");
                        String optionA=request.getParameter("optionA");
            String optionB=request.getParameter("optionB");
            String optionC=request.getParameter("optionC");
            String optionD=request.getParameter("optionD");
            String answer=request.getParameter("answer");

             
                  st.execute("insert into exam_question_bank(ExamId, QuestionNo, Question, OptionA, OptionB, OptionC, OptionD, Answer)values('"+examid+"','"+qno+"','"+question+"','"+optionA+"','"+optionB+"','"+optionC+"','"+optionD+"','"+answer+"')");
                  
                  response.sendRedirect("addquestions.jsp?status=question added success");
               
                  
            }
            else
            {
                %>
                <label style="color: blue;">All Questions Added </label>
                <%
            }
           %>
            
    </body>
</html>
