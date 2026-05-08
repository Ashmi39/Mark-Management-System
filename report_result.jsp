<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report Results</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
    margin:0;
}

/* CONTAINER */
.container{

    width:95%;

    margin:30px auto;

    background:white;

    padding:30px;

    border-radius:12px;

    box-shadow:0 0 15px rgba(0,0,0,0.1);
}

/* TITLE */
h2{

    text-align:center;

    font-size:40px;

    margin-bottom:30px;
}

/* TABLE */
.big-table{

    width:100%;

    border-collapse:collapse;

    margin-top:20px;

    font-size:22px;
}

/* HEADER */
.big-table th{

    background:#1565c0;

    color:white;

    padding:18px;

    border:2px solid #ddd;
}

/* CELLS */
.big-table td{

    padding:16px;

    text-align:center;

    border:2px solid #ddd;
}

/* ALTERNATE ROW */
.big-table tr:nth-child(even){

    background:#f4f8ff;
}

/* HOVER */
.big-table tr:hover{

    background:#dbeeff;
}

/* BACK BUTTON */
.home-btn{

    display:inline-block;

    margin-top:20px;

    padding:12px 18px;

    background:#1565c0;

    color:white;

    text-decoration:none;

    border-radius:6px;

    font-size:18px;
}

.home-btn:hover{

    background:#0d47a1;
}

</style>

</head>

<body>

<div class="container">

<h2>Report Results</h2>

<%

ResultSet rs = (ResultSet) request.getAttribute("data");

%>

<table class="big-table">

<tr>

<th>ID</th>

<th>Student Name</th>

<th>Subject</th>

<th>Marks</th>

<th>Exam Date</th>

</tr>

<%

if(rs != null){

    while(rs.next()){
%>

<tr>

<td><%= rs.getInt("StudentID") %></td>

<td><%= rs.getString("StudentName") %></td>

<td><%= rs.getString("Subject") %></td>

<td><%= rs.getInt("Marks") %></td>

<td><%= rs.getDate("ExamDate") %></td>

</tr>

<%
    }
}
%>

</table>

<a href="reports.jsp" class="home-btn">
⬅ Back
</a>

</div>

</body>
</html>