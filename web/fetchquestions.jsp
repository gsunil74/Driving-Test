<%-- 
    Document   : successadmin
    Created on : 14-Apr-2015, 10:52:31 PM
    Author     : c0631942
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<table>
      <%
          String examname = request.getParameter("examname");
          Connection con=dbconn.getconnection();
                  Statement st=con.createStatement();
                  ResultSet rs=null; 
                  
                  rs=st.executeQuery("select ExamId, QuestionNo, Question, OptionA, OptionB, OptionC, OptionD, Answer from exam_question_bank where ExamId='"+examname+"'");
                  while(rs.next())
                  {
                      %>
      <tr><td>QNo:</td><td><%=rs.getInt("QuestionNo")%></td></tr>
            <tr><td>Question:</td><td><%=rs.getString("Question")%></td></tr>
            <tr><td><input type="radio" name="<%=rs.getInt("QuestionNo")%>" value="<%=rs.getString("OptionA")%>"></td><td><%=rs.getString("OptionA")%></td></tr>
            <tr><td><input type="radio" name="<%=rs.getInt("QuestionNo")%>" value="<%=rs.getString("OptionB")%>"></td><td><%=rs.getString("OptionB")%></td></tr>
            <tr><td><input type="radio" name="<%=rs.getInt("QuestionNo")%>" value="<%=rs.getString("OptionC")%>"></td><td><%=rs.getString("OptionC")%></td></tr>
            <tr><td><input type="radio" name="<%=rs.getInt("QuestionNo")%>" value="<%=rs.getString("OptionD")%>"></td><td><%=rs.getString("OptionD")%></td></tr>
            

                  <%
                  
                  }
                  
                  %>
  
</table> 