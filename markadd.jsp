<link rel="stylesheet" href="style.css">

<div class="container">
<h2>Add Student Marks</h2>

<form action="AddMarkServlet" method="post">
    Name:
    <input type="text" name="name" required>

    Subject:
    <input type="text" name="subject" required>

    Marks:
    <input type="number" name="marks" min="0" max="100" required>

    Date:
    <input type="date" name="date" required>

    <button class="btn">Add</button>
</form>

<a href="index.jsp" class="home-btn">⬅ Back to Home</a>
</div>