<link rel="stylesheet" href="style.css">

<div class="container">
<h2>Generate Reports</h2>

<form action="ReportServlet" method="post">
    Marks Above:
    <input type="number" name="marks">
    <button class="btn" name="action" value="above">Generate</button>
</form>

<form action="ReportServlet" method="post">
    Subject:
    <input type="text" name="subject">
    <button class="btn" name="action" value="subject">Generate</button>
</form>

<form action="ReportServlet" method="post">
    Top N Students:
    <input type="number" name="topn">
    <button class="btn" name="action" value="top">Generate</button>
</form>

<a href="index.jsp" class="home-btn">⬅ Back to Home</a>
</div>