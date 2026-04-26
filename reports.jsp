<h2>Reports</h2>

<form action="ReportServlet" method="post">
    Marks Above:
    <input type="number" name="marks">
    <button name="action" value="above">Generate</button>
</form>

<form action="ReportServlet" method="post">
    Subject:
    <input type="text" name="subject">
    <button name="action" value="subject">Generate</button>
</form>

<form action="ReportServlet" method="post">
    Top N:
    <input type="number" name="topn">
    <button name="action" value="top">Generate</button>
</form>