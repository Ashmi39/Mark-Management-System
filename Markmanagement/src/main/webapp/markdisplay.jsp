<%@ page import="java.sql.*,com.dao.MarkDAO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Score Board</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
    margin:0;
}

.container{
    width:95%;
    margin:30px auto;
    background:white;
    padding:30px;
    border-radius:12px;
    box-shadow:0 0 15px rgba(0,0,0,0.1);
}

h2{
    text-align:center;
    font-size:40px;
}

.big-table{
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
    font-size:22px;
}

.big-table th{
    background:#1565c0;
    color:white;
    padding:18px;
    border:2px solid #ddd;
}

.big-table td{
    padding:16px;
    text-align:center;
    border:2px solid #ddd;
}

.big-table tr:nth-child(even){
    background:#f4f8ff;
}

.big-table tr:hover{
    background:#dbeeff;
}

.action-btn{
    padding:8px 12px;
    border-radius:5px;
    color:white;
    text-decoration:none;
    margin:4px;
}

.delete{
    background:#e53935;
}

.update{
    background:#1565c0;
}

.home-btn{
    display:inline-block;
    margin-top:20px;
    padding:12px 18px;
    background:#1565c0;
    color:white;
    text-decoration:none;
    border-radius:6px;
}

</style>

</head>

<body>

<div class="container">

<h2>Student Score Board</h2>

<%
MarkDAO dao = new MarkDAO();
ResultSet rs = dao.getAllMarks();
%>

<table class="big-table">

<tr>

<th>ID</th>
<th>Student Name</th>
<th>Subject</th>
<th>Marks</th>
<th>Exam Date</th>
<th>Action</th>

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

<a class="action-btn delete"
href="DeleteMarkServlet?id=<%= rs.getInt("StudentID") %>"
onclick="return confirm('Do you want to delete this record?');">
Delete
</a>

<a class="action-btn update"
href="markupdate.jsp?id=<%= rs.getInt("StudentID") %>&subject=<%= rs.getString("Subject") %>&marks=<%= rs.getInt("Marks") %>">
Update
</a>

</td>

</tr>

<%
}
%>

</table>

<a href="index.jsp" class="home-btn">
⬅ Back
</a>

</div>

</body>
</html>