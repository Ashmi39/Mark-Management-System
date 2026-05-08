<%@ page import="com.dao.MarkDAO" %>
<link rel="stylesheet" href="style.css">

<%
MarkDAO dao = new MarkDAO();
int nextId = dao.getNextId();
%>

<div class="container">
<h2>Add Student Marks</h2>

<form action="AddMarkServlet" method="post">

ID:
<input type="text" value="<%= nextId %>" readonly>

Name:
<input type="text" name="name" required>

Subject:
<select name="subject">
    <option>Maths</option>
    <option>Science</option>
    <option>English</option>
    <option>Computer</option>
    <option>Java</option>
    <option>DBMS</option>
</select>

Marks:
<input type="number" name="marks" min="0" max="100" required>

Date:
<input type="date" name="date" required>

<button class="btn">Add</button>
</form>

<a href="index.jsp" class="home-btn">⬅ Back</a>
</div>