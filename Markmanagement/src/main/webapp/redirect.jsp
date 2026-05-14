<%
String report = request.getParameter("report");

if("marks".equals(report)){
    response.sendRedirect("marks_filter.jsp");
}
else if("subject".equals(report)){
    response.sendRedirect("subject_filter.jsp");
}
else if("top".equals(report)){
    response.sendRedirect("top_filter.jsp");
}
%>