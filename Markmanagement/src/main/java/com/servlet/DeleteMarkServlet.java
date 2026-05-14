package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import com.dao.MarkDAO;

@WebServlet("/DeleteMarkServlet")
public class DeleteMarkServlet extends HttpServlet{
protected void doGet(HttpServletRequest req,HttpServletResponse res)throws IOException{

int id=Integer.parseInt(req.getParameter("id"));

MarkDAO dao=new MarkDAO();
dao.deleteMark(id);

res.sendRedirect("markdisplay.jsp");
}
}