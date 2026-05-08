<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Marks</title>

<style>

body{
    font-family:Arial;
    background:#eef2f7;
    margin:0;
}

.container{
    width:50%;
    margin:80px auto;
    background:white;
    padding:40px;
    border-radius:15px;
    box-shadow:0 0 15px rgba(0,0,0,0.2);
}

h2{
    text-align:center;
    font-size:40px;
    margin-bottom:30px;
}

label{
    font-size:20px;
}

input{
    width:100%;
    padding:12px;
    margin-top:10px;
    margin-bottom:20px;
    font-size:18px;
    border-radius:6px;
    border:1px solid #ccc;
}

.btn{
    width:100%;
    padding:15px;
    background:#1565c0;
    color:white;
    border:none;
    border-radius:8px;
    font-size:22px;
    cursor:pointer;
}

.btn:hover{
    background:#0d47a1;
}

.home-btn{
    display:inline-block;
    margin-top:20px;
    text-decoration:none;
    font-size:20px;
}

</style>

</head>

<body>

<%

int id = Integer.parseInt(request.getParameter("id"));

String subject = request.getParameter("subject");

int marks = Integer.parseInt(request.getParameter("marks"));

%>

<div class="container">

<h2>Update Marks</h2>

<form action="UpdateMarkServlet" method="post">

<label>ID</label>

<input type="text"
name="id"
value="<%= id %>"
readonly>

<label>Subject</label>

<input type="text"
value="<%= subject %>"
readonly>

<label>Marks</label>

<input type="number"
name="marks"
value="<%= marks %>"
min="0"
max="100">

<button class="btn">
Update
</button>

</form>

<a href="markdisplay.jsp" class="home-btn">
⬅ Back
</a>

</div>

</body>
</html>