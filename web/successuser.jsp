<%-- 
    Document   : successadmin
    Created on : 14-Apr-2015, 10:52:31 PM
    Author     : c0631942
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<head>
    <style>
            .nav ul {
      list-style: none;
      background-color: #555;
      text-align: center;
      padding: 0;
      margin: 0;
      
    }


        
        
    </style>
    
</head>

<%
if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
{
%>
    You are not logged in<br/>
    <a href="index.jsp">Please Login</a>
<%
} 
else 
{
%>
<form action="examsaveaction.jsp">
<div style="border: solid black;width: 70%;height: 600px;margin-left: 15%;overflow: scroll">
    Welcome <%=session.getAttribute("userid")%>
  <div class="nav">
      <ul>
        
        <li class="about"><a href="logout.jsp">Logout</a></li>
       <!-- <li class="news"><a href="#">Newsletter</a></li>
        <li class="contact"><a href="#">Contact</a></li>-->
      </ul>
    </div>  
  
  <table>
      <tr><td>Exam Name</td><td><select type="text" name="exam_name" id="exam_name"><option></option>
                  <%
                  Connection con=dbconn.getconnection();
                  Statement st=con.createStatement();
                  ResultSet rs=null;
                  int exid=0;
                  rs=st.executeQuery("select ExamId,Examname from exam_list");
                  while(rs.next())
                  {
                      exid=rs.getInt("ExamId");
                      %>
                  
                  <option value="<%=rs.getInt("ExamId")%>"><%=rs.getString("Examname")%></option>
                   <%  
                  }
                  
                  %>
              
              
              
              </select></td></tr>
      <%
                  rs=st.executeQuery("select ExamId, QuestionNo, Question, OptionA, OptionB, OptionC, OptionD, Answer from exam_question_bank");
                  while(rs.next())
                  {
                      %>
      <tr><td>QNo:</td><td><%=rs.getInt("QuestionNo")%></td></tr>
            <tr><td>Question:</td><td><%=rs.getString("Question")%></td></tr>
            <tr><td><input type="radio"></td><td><%=rs.getString("OptionA")%></td></tr>
            <tr><td><input type="radio"></td><td><%=rs.getString("OptionB")%></td></tr>
            <tr><td><input type="radio"></td><td><%=rs.getString("OptionC")%></td></tr>
            <tr><td><input type="radio"></td><td><%=rs.getString("OptionD")%></td></tr>
            <tr><td><input type="submit" value="Save Answer"></td></tr>

                  <%
                  }
                  
                  %>
  
  </table>
                 
    
    
    
</div>
  </form>

   
    
    
    
<%
}
%>