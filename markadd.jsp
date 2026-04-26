<form action="AddMarkServlet" method="post">
    Name: <input type="text" name="name" required><br>
    Subject: <input type="text" name="subject" required><br>
    Marks: <input type="number" name="marks" min="0" max="100" required><br>
    Date: <input type="date" name="date" required><br>
    <input type="submit" value="Add">
</form>