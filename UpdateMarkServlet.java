package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import com.dao.MarkDAO;

@WebServlet("/UpdateMarkServlet")
public class UpdateMarkServlet extends HttpServlet{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException{

int id=Integer.parseInt(req.getParameter("id"));
int marks=Integer.parseInt(req.getParameter("marks"));

MarkDAO dao=new MarkDAO();
dao.updateMark(id,marks);

res.sendRedirect("markdisplay.jsp");
}
}