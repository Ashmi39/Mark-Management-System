<%@ page contentType="text/html;charset=UTF-8" %>
<link rel="stylesheet" href="style.css">

<div class="container">
<h2>Select Report Type</h2>

<!-- STEP 1: SELECT REPORT TYPE -->
<form action="reports.jsp" method="get">

<select name="type" required>
    <option value="">-- Select Report --</option>
    <option value="marks">Filter by Marks</option>
    <option value="subject">Filter by Subject</option>
    <option value="top">Top N Students</option>
</select>

<button class="btn">Next</button>
</form>

<a href="index.jsp" class="home-btn">⬅ Back</a>

<hr>

<%
String type = request.getParameter("type");

if(type != null){
%>

<!-- STEP 2: SHOW ONLY SELECTED FORM -->

<% if(type.equals("marks")){ %>

<div class="report-box">
<form action="ReportServlet" method="post">
<h3>Filter by Marks</h3>

<label>Marks:</label>
<input type="number" name="marks" required>

<label>Operator:</label>
<select name="operator">
    <option value=">">Greater Than (>)</option>
    <option value="<">Less Than (<)</option>
    <option value="=">Equal (=)</option>
</select>

<button class="btn" name="action" value="filter">Generate</button>
</form>
</div>

<% } else if(type.equals("subject")){ %>

<div class="report-box">
<form action="ReportServlet" method="post">
<h3>Filter by Subject</h3>

<label>Subject:</label>
<select name="subject">
    <option>Maths</option>
    <option>Science</option>
    <option>English</option>
    <option>Computer</option>
    <option>Java</option>
    <option>DBMS</option>
</select>

<button class="btn" name="action" value="subject">Generate</button>
</form>
</div>

<% } else if(type.equals("top")){ %>

<div class="report-box">
<form action="ReportServlet" method="post">
<h3>Top N Students</h3>

<label>Enter N:</label>
<input type="number" name="topn" required>

<button class="btn" name="action" value="top">Generate</button>
</form>
</div>

<% } } %>

</div>