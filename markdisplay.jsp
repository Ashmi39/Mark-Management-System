<%@ page import="java.sql.*,com.dao.MarkDAO" %>

<%
MarkDAO dao = new MarkDAO();
ResultSet rs = dao.getAllMarks();
%>

<table border="1">
<tr>
<th>ID</th><th>Name</th><th>Subject</th><th>Marks</th><th>Date</th><th>Action</th>
</tr>

<%
while(rs.next()){
%>
<tr>
<td><%= rs.getInt("StudentID") %></td>
<td><%= rs.getString("StudentName") %></td>
<td><%= rs.getString("Subject") %></td>
<td><%= rs.getInt("Marks") %></td>
<td><%= rs.getDate("ExamDate") %></td>

<td>
<a href="DeleteMarkServlet?id=<%= rs.getInt("StudentID") %>">Delete</a>

<a href="markupdate.jsp?id=<%= rs.getInt("StudentID") %>&marks=<%= rs.getInt("Marks") %>">
Update</a>
</td>

</tr>
<%
}
%>
</table>