<%-- 
    Document   : examsaveaction.jsp
    Created on : Apr 18, 2015, 4:15:54 PM
    Author     : c0631942
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbconn"%>
<%@page import="java.sql.Statement"%>
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
            
            Connection con=dbconn.getconnection();
                  Statement st=con.createStatement();
                  ResultSet rs=null; 
                  int correctAnswers = 0;
                  int totalQuestions = 0;
                  rs=st.executeQuery("select QuestionNo, Answer from exam_question_bank where ExamId='"+exam_name+"'");
                  while(rs.next())
                  {
                      String questionNum = rs.getString(1);
                      String correctAnswer = rs.getString(2);
                      totalQuestions++;
                      if(correctAnswer.equalsIgnoreCase(request.getParameter(questionNum))) {
                          correctAnswers++;
                      }
                      out.println(questionNum+". answer choosen "+request.getParameter(questionNum)+" correct answer "+rs.getString(2)+"\n");
                      
                  }
            out.println("\n correct answers: "+correctAnswers+" out off "+totalQuestions);
            %>
            <br/>
           Exam: <%=exam_name%>
    </body>
</html>
