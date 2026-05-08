<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Mark Management System</title>

<style>

body{
    margin:0;
    padding:0;
    font-family:Arial, sans-serif;
    background:#eef2f7;
}

/* CENTER */
.hero{
    height:100vh;

    display:flex;

    justify-content:center;

    align-items:center;
}

/* BIG BOX */
.hero-box{

    width:70%;

    background:white;

    padding:80px;

    border-radius:20px;

    text-align:center;

    box-shadow:0 0 20px rgba(0,0,0,0.2);
}

/* TITLE */
.hero-box h1{

    font-size:60px;

    color:#222;

    margin-bottom:30px;
}

/* TEXT */
.hero-box p{

    font-size:28px;

    color:#555;

    margin-bottom:50px;
}

/* BUTTON */
.btn{

    display:inline-block;

    padding:18px 32px;

    margin:15px;

    background:#1565c0;

    color:white;

    text-decoration:none;

    border-radius:10px;

    font-size:24px;

    transition:0.3s;
}

/* HOVER */
.btn:hover{

    background:#0d47a1;

    transform:scale(1.05);
}

</style>

</head>

<body>

<div class="hero">

    <div class="hero-box">

        <h1>Student Mark Management System</h1>

        <p>
            Manage student marks easily,
            update records, view scores
            and generate reports.
        </p>

        <a href="markadd.jsp" class="btn">
            Add Marks
        </a>

        <a href="markdisplay.jsp" class="btn">
            View Scores
        </a>

        <a href="reports.jsp" class="btn">
            Reports
        </a>

    </div>

</div>

</body>
</html>