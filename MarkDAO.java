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

    // ✅ FIXED METHOD (NO SAME ID ISSUE)
    public int getNextId(){
        int id = 1;
        try{
            String q = "SELECT MAX(StudentID) FROM StudentMarks";
            PreparedStatement ps = con.prepareStatement(q);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                id = rs.getInt(1) + 1;
            }

        }catch(Exception e){ e.printStackTrace(); }
        return id;
    }

    // INSERT
    public int addMark(String name,String sub,int marks,String date){
        int id = 0;
        try{
            String q="INSERT INTO StudentMarks (StudentName,Subject,Marks,ExamDate) VALUES (?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q, Statement.RETURN_GENERATED_KEYS);

            ps.setString(1,name);
            ps.setString(2,sub);
            ps.setInt(3,marks);
            ps.setDate(4,Date.valueOf(date));

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if(rs.next()){
                id = rs.getInt(1);
            }

        }catch(Exception e){e.printStackTrace();}
        return id;
    }

    // UPDATE
    public void updateMark(int id,int marks){
        try{
            String q="UPDATE StudentMarks SET Marks=? WHERE StudentID=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,marks);
            ps.setInt(2,id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }

    // DELETE
    public void deleteMark(int id){
        try{
            String q="DELETE FROM StudentMarks WHERE StudentID=?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,id);
            ps.executeUpdate();
        }catch(Exception e){e.printStackTrace();}
    }

    // VIEW ALL
    public ResultSet getAllMarks(){
        try{
            return con.prepareStatement("SELECT * FROM StudentMarks").executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }

    // REPORT: OPERATOR
    public ResultSet getByOperator(String op,int m){
        try{
            if(!(op.equals(">") || op.equals("<") || op.equals("="))){
                return null;
            }
            String q="SELECT * FROM StudentMarks WHERE Marks "+op+" ?";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setInt(1,m);
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }

    // REPORT: SUBJECT
    public ResultSet getBySubject(String sub){
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM StudentMarks WHERE Subject=?");
            ps.setString(1,sub);
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }

    // REPORT: TOP N
    public ResultSet getTopN(int n){
        try{
            PreparedStatement ps=con.prepareStatement("SELECT * FROM StudentMarks ORDER BY Marks DESC LIMIT ?");
            ps.setInt(1,n);
            return ps.executeQuery();
        }catch(Exception e){e.printStackTrace();}
        return null;
    }
}