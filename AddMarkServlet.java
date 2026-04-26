package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import com.dao.MarkDAO;

@WebServlet("/AddMarkServlet")
public class AddMarkServlet extends HttpServlet{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{

String name=req.getParameter("name");
String sub=req.getParameter("subject");
int marks=Integer.parseInt(req.getParameter("marks"));
String date=req.getParameter("date");

if(marks<0||marks>100){
res.getWriter().println("Invalid marks");
return;
}

MarkDAO dao=new MarkDAO();
dao.addMark(name,sub,marks,date);

res.sendRedirect("markdisplay.jsp");
}
}