<%-- 
    Document   : layout
    Created on : 14-Apr-2015, 10:52:48 PM
    Author     : c0631942
--%>

<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>