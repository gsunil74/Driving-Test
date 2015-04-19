<%-- 
    Document   : successadmin
    Created on : 14-Apr-2015, 10:52:31 PM
    Author     : c0631942
--%>
<head>
<style>
ul#menu {
    padding: 0;
    margin-left: 50px;
}

ul#menu li {
    display: inline;
    
}

ul#menu li a {
    background-color: #008dde;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 4px 4px 0 0;
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

<div style="border: solid black;width: 30%;height: 300px;margin-left: 15%">
    Welcome <%=session.getAttribute("userid")%>
  <div class="nav">
      <ul id="menu">
        <li><a href="addexam.jsp">Add Exam</a></li>
        <li><a href="addquestions.jsp">Add Questions</a></li>
        <li class="about"><a href="logout.jsp">Logout</a></li>
       <!-- <li class="news"><a href="#">Newsletter</a></li>
        <li class="contact"><a href="#">Contact</a></li>-->
      </ul>
    </div>  
    
    
    
    
</div>
     
    
    
<%
}
%>

