<!DOCTYPE html>
<html>
<head>
<title>Top N Students</title>

<style>
body{font-family:Arial;background:#f0f4f8;}
.box{
    width:400px;
    margin:120px auto;
    background:white;
    padding:30px;
    border-radius:15px;
}
input,button{
    width:100%;
    padding:12px;
    margin-top:15px;
    font-size:18px;
}
button{
    background:#1976d2;
    color:white;
    border:none;
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

<div class="box">

<h2>Top N Students</h2>

<form action="report_result.jsp" method="post">

<input type="number" name="limit" placeholder="Enter N value" required>

<input type="hidden" name="report" value="top">

<button type="submit">Show Result</button>

</form>

<a href="reports.jsp" class="back">⬅ Back</a>

</div>

</body>
</html>