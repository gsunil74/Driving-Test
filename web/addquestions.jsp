<%-- 
    Document   : successadmin
    Created on : 14-Apr-2015, 10:52:31 PM
    Author     : c0631942
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="db.dbconn"%>
<%@page import="java.sql.Connection"%>
<head>
    <style>
            .nav ul {
      list-style: none;
     
      text-align: center;
      padding: 0;
      margin: 0;
      
    }

      table{
        margin-top: 100px;
        margin-left: 400px;
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
<form action="questionpapersave.jsp">
<div style="border: solid black;width: 70%;height: 600px;margin-left: 15%">
    Welcome <%=session.getAttribute("userid")%>
  <div class="nav">
      <ul>
        <li><a href="addexam.jsp">Add Exam</a></li>
        <li><a href="addquestions.jsp">Add Questions</a></li>
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
                  rs=st.executeQuery("select ExamId,Examname from exam_list");
                  while(rs.next())
                  {
                      %>
                  
                  <option value="<%=rs.getInt("ExamId")%>"><%=rs.getString("Examname")%></option>
                   <%  
                  }
                  
                  %>
              
              
              
              </select></td></tr>
    
      <tr><td>Qustion</td><td><textarea type="text" name="question_desc" id="question_desc"></textarea></td></tr>
      <tr><td>Option A</td><td><input type="text" id="optionA" name="optionA"></td></tr>
            <tr><td>Option B</td><td><input type="text" id="optionB" name="optionB"></td></tr>
      <tr><td>Option C</td><td><input type="text" id="optionC" name="optionC"></td></tr>
      <tr><td>Option D</td><td><input type="text" id="optionD" name="optionD"></td></tr>
            <tr><td>Answer</td><td><input type="text" id="answer" name="answer"></td></tr>


      <tr><td><input type="submit" value="SaveExam"></td></tr>
      
      
  </table>
    
    
    
    
</div>
  </form>

   
    
    
    
<%
}
%>