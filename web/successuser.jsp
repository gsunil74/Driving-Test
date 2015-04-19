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
      
      text-align: center;
      padding: 0;
      margin: 0;
      
    }


        
        
    </style>
    <script> 
    var request;  
function sendInfo()  
{  
var v=document.examform.exam_name.value;  
var url="fetchquestions.jsp?examname="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("GET",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('questionResponse').innerHTML=val;  
}  
}  
  
</script>  
    
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
<form name="examform" action="examsaveaction.jsp">
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
      <tr><td>Exam Name</td><td><select type="text" name="exam_name" id="exam_name" onchange="sendInfo()"><option></option>
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

  
  </table>
                  <div id="questionResponse"> </div>            
    
    <input type="submit" value="Save Answer">
    
</div>
  </form>

   
    
    
    
<%
}
%>