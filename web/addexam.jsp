<%-- 
    Document   : successadmin
    Created on : 14-Apr-2015, 10:52:31 PM
    Author     : c0631942
--%>
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
    
    #saveexam{
        margin-top: 20px;
        margin-left: 70px;
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
      
      <tr><td>Exam Name</td><td><input typw="text" name="exam_name" id="exam_name"></td></tr>
      <tr><td>Exam Description</td><td><textarea typw="text" name="exam_desc" id="exam_desc"></textarea></td></tr>
      <tr><td><input type="submit" value="SaveExam" id="saveexam"></td></tr>
      
      
  </table>
    
    
    
    
</div>
  </form>

   
    
    
    
<%
}
%>