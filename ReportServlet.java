package com.servlet;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;
import java.sql.*;
import com.dao.MarkDAO;

@WebServlet("/ReportServlet")
public class ReportServlet extends HttpServlet{
protected void doPost(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{

String action=req.getParameter("action");
MarkDAO dao=new MarkDAO();
ResultSet rs=null;

if(action.equals("above")){
int m=Integer.parseInt(req.getParameter("marks"));
rs=dao.getAboveMarks(m);
}
else if(action.equals("subject")){
String sub=req.getParameter("subject");
rs=dao.getBySubject(sub);
}
else if(action.equals("top")){
int n=Integer.parseInt(req.getParameter("topn"));
rs=dao.getTopN(n);
}

req.setAttribute("data",rs);
req.getRequestDispatcher("report_result.jsp").forward(req,res);
}
}