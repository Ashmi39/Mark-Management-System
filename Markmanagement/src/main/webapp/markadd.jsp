<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>

<head>

<title>Add Marks</title>

<style>

body{
    margin:0;
    padding:0;
    background:#edf2f7;
    font-family:Arial,sans-serif;
}

/* Center Page */

.main-container{

    display:flex;

    justify-content:center;

    align-items:center;

    min-height:100vh;
}

/* Big Card */

.big-card{

    width:700px;

    background:white;

    padding:60px;

    border-radius:20px;

    box-shadow:0 5px 20px rgba(0,0,0,0.1);
}

/* Heading */

h1{

    text-align:center;

    color:#1565c0;

    font-size:50px;

    margin-bottom:15px;
}

/* ID Box */

.id-box{

    text-align:center;

    font-size:28px;

    color:#1976d2;

    margin-bottom:35px;

    font-weight:bold;
}

/* Form Group */

.form-group{

    margin-bottom:30px;
}

/* Labels */

label{

    display:block;

    font-size:22px;

    margin-bottom:10px;

    color:#333;
}

/* Inputs */

input,
select{

    width:100%;

    padding:18px;

    font-size:20px;

    border-radius:10px;

    border:1px solid #ccc;

    box-sizing:border-box;
}

/* Button */

button{

    width:100%;

    padding:20px;

    background:#1976d2;

    color:white;

    border:none;

    border-radius:10px;

    font-size:24px;

    cursor:pointer;
}

button:hover{

    background:#0d47a1;
}

/* Back Button */

.back-btn{

    display:block;

    text-align:center;

    margin-top:25px;

    background:#64b5f6;

    color:white;

    text-decoration:none;

    padding:15px;

    border-radius:10px;

    font-size:20px;
}

.back-btn:hover{

    background:#42a5f5;
}

</style>

</head>

<body>

<%

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(

"jdbc:mysql://localhost:3306/student",

"root",

"ashmi@r@2426"
);

Statement st = con.createStatement();

/* Get Next ID */

ResultSet rs = st.executeQuery(

"SELECT MAX(StudentID)+1 FROM studentmarks"

);

int nextId = 1;

if(rs.next()){

    nextId = rs.getInt(1);

    if(rs.wasNull()){

        nextId = 1;
    }
}

%>

<div class="main-container">

<div class="big-card">

<h1>Add Student Marks</h1>

<div class="id-box">

Student ID : <%= nextId %>

</div>

<form action="AddMarkServlet" method="post">

<div class="form-group">

<label>Student Name</label>

<input type="text"
name="name"
placeholder="Enter student name"
required>

</div>

<div class="form-group">

<label>Subject</label>

<select name="subject">

<option>Maths</option>
<option>Science</option>
<option>English</option>
<option>Computer</option>
<option>Java</option>
<option>DBMS</option>

</select>

</div>

<div class="form-group">

<label>Marks</label>

<input type="number"
name="marks"
placeholder="Enter marks"
min="0"
max="100"
required>

</div>

<div class="form-group">

<label>Exam Date</label>

<input type="date"
name="date"
required>

</div>

<button type="submit">

Add Marks

</button>

</form>

<a href="index.jsp" class="back-btn">

⬅ Back to Home

</a>

</div>

</div>

</body>

</html>