<%@ page import="java.sql.*" %>
<link rel="stylesheet" href="style.css">

<div class="container">
<h2>Report Results</h2>

<%
ResultSet rs = (ResultSet) request.getAttribute("data");
%>

<table>
<tr>
<th>ID</th><th>Name</th><th>Subject</th><th>Marks</th>
</tr>

<%
while(rs != null && rs.next()){
%>
<tr>
<td><%= rs.getInt("StudentID") %></td>
<td><%= rs.getString("StudentName") %></td>
<td><%= rs.getString("Subject") %></td>
<td><%= rs.getInt("Marks") %></td>
</tr>
<%
}
%>

</table>

<a href="index.jsp" class="home-btn">⬅ Back to Home</a>
</div>