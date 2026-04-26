<%@ page import="java.sql.*" %>

<%
ResultSet rs = (ResultSet) request.getAttribute("data");
%>

<table border="1">
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