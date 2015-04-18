<%-- 
    Document   : saveresult
    Created on : Apr 18, 2015, 7:20:20 PM
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
            session.getAttribute("uid");
            int exid=Integer.parseInt(request.getParameter("exid"));
            int qno=Integer.parseInt(request.getParameter("qno"));
int marks=5;
            String answer=request.getParameter("options");
            System.out.println("xfg"+answer);
            Connection con=dbconn.getconnection();
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select *from exam_results where UEID='"+session.getAttribute("uid")+"'");
            if(rs.next())
            {
                rs=st.executeQuery("select answer,MarksScored from exam_question_bank,exam_results where QuestionNo='"+qno+"',ExamId='"+exid+"'");
                
                while(rs.next())
                {
                    if(answer.equals(rs.getString("answer")));
                    {
                        marks=marks+rs.getInt("MarksScored");
                        //int total=rs.getInt("MarksScored");
                        st.executeUpdate("update exam_results set ExamId='"+exid+"', UserId='"+session.getAttribute("uid")+"', MarksScored='"+marks+"'");
                    }
                    
                }
                
            }
            else
            {
                                        st.executeUpdate("insert into exam_results(ExamId, UserId, MarksScored)values('"+exid+"','"+session.getAttribute("uid")+"','"+marks+"')");

            }
            %>
    </body>
</html>
