package com.dao;
import java.sql.*;

public class MarkDAO {

    Connection con;

    public MarkDAO() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/Student",
                "root",
                "ashmi@r@2426"
            );
        } catch(Exception e){ e.printStackTrace(); }
    }

    public void addMark(String name,String sub,int marks,String date){
        try{
            String q="INSERT INTO StudentMarks (StudentName,Subject,Marks,ExamDate) VALUES (?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1,name);
            ps.setString(2,sub);
            ps.setInt(3,marks);
            ps.setDate(4,Date.valueOf(date));
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }

    public void updateMark(int id,int marks){
        try{
            String q="UPDATE StudentMarks SET Marks=? WHERE StudentID=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,marks);
            ps.setInt(2,id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }

    public void deleteMark(int id){
        try{
            String q="DELETE FROM StudentMarks WHERE StudentID=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }

    public ResultSet getAllMarks(){
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM StudentMarks");
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }

    public ResultSet getAboveMarks(int m){
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM StudentMarks WHERE Marks>?");
            ps.setInt(1,m);
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }

    public ResultSet getBySubject(String sub){
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM StudentMarks WHERE Subject=?");
            ps.setString(1,sub);
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }

    public ResultSet getTopN(int n){
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM StudentMarks ORDER BY Marks DESC LIMIT ?");
            ps.setInt(1,n);
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }
}