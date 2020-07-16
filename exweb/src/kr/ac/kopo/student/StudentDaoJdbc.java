package kr.ac.kopo.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class StudentDaoJdbc implements StudentDao {

   String url = "jdbc:oracle:thin:@localhost:1521:xe";
   String user = "com";
   String password = "com01";

   @Override
public ArrayList<StudentVo> selectStudentList() {
      
      ArrayList<StudentVo> list = new ArrayList<StudentVo>();
      String sql = "SELECT stu_no, stu_name, stu_score FROM student order by stu_no";

      try (Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();) {

      while (rs.next()) {
         StudentVo vo = new StudentVo();
         vo.setStuNo(rs.getString("stu_no"));
         vo.setStuName(rs.getString("stu_name"));
         vo.setStuScore(rs.getInt("stu_score"));

         list.add(vo);
           
      }
      } catch (SQLException e) {
         e.printStackTrace();
      }
      return list;
   }
   
   @Override
public int deleteStudent(String stuNo) {
      int num = 0;

      String sql = "DELETE FROM student WHERE stu_no = ?";

      try (Connection conn = DriverManager.getConnection(url, user, password);
            PreparedStatement pstmt = conn.prepareStatement(sql);) {
         pstmt.setString(1, stuNo);
         num = pstmt.executeUpdate();

      } catch (SQLException e) {
         e.printStackTrace();
      }
      return num;
   }

   @Override
public int insertStudent(StudentVo vo) {
      int num = 0;
   String sql = "INSERT INTO student (stu_no,  stu_name, stu_score) " + "VALUES (?,?,?)";
   try (Connection conn = DriverManager.getConnection(url, user, password);
   PreparedStatement pstmt = conn.prepareStatement(sql);) {      
   pstmt.setString(1, vo.getStuNo()); 
   pstmt.setString(2, vo.getStuName()); 
   pstmt.setInt(3, vo.getStuScore()); 
   num = pstmt.executeUpdate();
   
   
   } catch (SQLException e) {
         e.printStackTrace();
   }
   return num;
   
   }
     
   @Override
public StudentVo selectStudent(String StuNo) {
   StudentVo vo = null;
    String sql = "SELECT stu_no, stu_name, stu_score FROM student WHERE stu_no = ?";
   
    try (
          Connection conn = DriverManager.getConnection(url, user, password);
          PreparedStatement pstmt = conn.prepareStatement(sql);                                                          
          ) 
          {
           pstmt.setString(1, StuNo); //No 값을 첫 번째 물음표에 채워라.                      
            try (ResultSet rs = pstmt.executeQuery();) //실행결과 레코드들을 가리키고 있는 resultset 값 반환                             
               {    
               if(rs.next()) {
               vo = new StudentVo();
                  vo.setStuNo(rs.getString("stu_no"));
                  vo.setStuName(rs.getString("stu_name"));
                  vo.setStuScore(rs.getInt("stu_score"));
               }                                                          
               }           
            
    } catch (SQLException e) {
       e.printStackTrace();
    }
   return vo;
}
   
   @Override
public int updateStudentVo(StudentVo vo) {
      int num = 0;
      
      String sql = "UPDATE student SET stu_name = ?, stu_score=? WHERE stu_no = ?";
      try (Connection conn = DriverManager.getConnection(url, user, password);
      PreparedStatement pstmt = conn.prepareStatement(sql);
            ) {      
      pstmt.setString(3, vo.getStuNo()); 
      pstmt.setInt(2, vo.getStuScore()); 
      pstmt.setString(1, vo.getStuName()); 

      num = pstmt.executeUpdate();
      } catch (SQLException e) {
            e.printStackTrace();
      }
      return num;
   }

   }