<%
int id = Integer.parseInt(request.getParameter("id"));
int marks = Integer.parseInt(request.getParameter("marks"));
%>

<form action="UpdateMarkServlet" method="post">
    ID: <input type="text" name="id" value="<%= id %>" readonly><br>
    Marks: <input type="number" name="marks" value="<%= marks %>" min="0" max="100"><br>
    <input type="submit" value="Update">
</form>