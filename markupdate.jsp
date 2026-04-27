<link rel="stylesheet" href="style.css">

<%
int id = Integer.parseInt(request.getParameter("id"));
int marks = Integer.parseInt(request.getParameter("marks"));
%>

<div class="container">
<h2>Update Marks</h2>

<form action="UpdateMarkServlet" method="post">
    ID:
    <input type="text" name="id" value="<%= id %>" readonly>

    Marks:
    <input type="number" name="marks" value="<%= marks %>" min="0" max="100">

    <button class="btn">Update</button>
</form>

<a href="index.jsp" class="home-btn">⬅ Back to Home</a>
</div>