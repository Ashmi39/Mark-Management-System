<!DOCTYPE html>
<html>
<head>
<title>Reports</title>

<style>
body{
    font-family:Arial;
    background:#edf2f7;
}

.container{
    width:500px;
    margin:120px auto;
    background:white;
    padding:40px;
    border-radius:15px;
    box-shadow:0 5px 15px rgba(0,0,0,0.1);
}

h1{
    text-align:center;
    color:#1565c0;
}

select,button{
    width:100%;
    padding:15px;
    margin-top:20px;
    font-size:18px;
}

button{
    background:#1976d2;
    color:white;
    border:none;
}
</style>
</head>

<body>

<div class="container">

<h1>Select Report</h1>

<form action="redirect.jsp" method="post">

<select name="report">
    <option value="marks">Marks Report</option>
    <option value="subject">Subject Wise Report</option>
    <option value="top">Top N Students</option>
</select>

<button type="submit">Next</button>

</form>

</div>

</body>
</html>