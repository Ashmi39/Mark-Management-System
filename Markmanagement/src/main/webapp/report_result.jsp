<%@ page import="java.sql.*" %>

<%
String report = request.getParameter("report");

Connection con = null;
Statement st = null;
ResultSet rs = null;

try{
    Class.forName("com.mysql.jdbc.Driver");

    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/student",
        "root",
        "ashmi@r@2426"
    );

    st = con.createStatement();

    // MARKS
    if("marks".equals(report)){
        String condition = request.getParameter("condition");
        String marks = request.getParameter("marks");

        String query = "SELECT * FROM studentmarks WHERE Marks " + condition + " " + marks;
        rs = st.executeQuery(query);
    }

    // SUBJECT
    else if("subject".equals(report)){
        String subject = request.getParameter("subject");

        String query = "SELECT * FROM studentmarks WHERE LOWER(TRIM(Subject)) = LOWER('" + subject + "')";
        rs = st.executeQuery(query);
    }

    // TOP N
    else if("top".equals(report)){
        int limit = Integer.parseInt(request.getParameter("limit"));

        String query = "SELECT * FROM studentmarks ORDER BY Marks DESC LIMIT " + limit;
        rs = st.executeQuery(query);
    }

}catch(Exception e){
    out.println(e);
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Result</title>

<style>
body{font-family:Arial;background:#edf2f7;}
.container{
    width:90%;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:15px;
}
h1{text-align:center;color:#1565c0;}
table{
    width:100%;
    border-collapse:collapse;
    margin-top:20px;
}
th{
    background:#1976d2;
    color:white;
    padding:12px;
}
td{
    text-align:center;
    padding:12px;
    border-bottom:1px solid #ddd;
}
tr:nth-child(even){
    background:#f5f9ff;
}
.back{
    display:inline-block;
    margin-top:20px;
    padding:10px 15px;
    background:#64b5f6;
    color:white;
    text-decoration:none;
    border-radius:8px;
}
</style>
</head>

<body>

<div class="container">

<h1>Report Result</h1>

<table>

<tr>
<th>ID</th>
<th>Name</th>
<th>Subject</th>
<th>Marks</th>
<th>Date</th>
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

<br>

<a href="reports.jsp" class="back">⬅ Back</a>

</div>

</body>
</html>