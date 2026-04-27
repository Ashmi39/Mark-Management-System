<%@ page import="java.sql.*,com.dao.MarkDAO" %>
<link rel="stylesheet" href="style.css">

<div class="container">
<h2>Student Marks</h2>

<%
MarkDAO dao = new MarkDAO();
ResultSet rs = dao.getAllMarks();
%>

<table>
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
<a class="action-btn delete" href="DeleteMarkServlet?id=<%= rs.getInt("StudentID") %>">Delete</a>
<a class="action-btn update" href="markupdate.jsp?id=<%= rs.getInt("StudentID") %>&marks=<%= rs.getInt("Marks") %>">Update</a>
</td>
</tr>
<%
}
%>

</table>

<a href="index.jsp" class="home-btn">⬅ Back to Home</a>
</div>