package kr.ac.kopo.bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BbsDaojdbc implements BbsDao {

	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "com";
	String password = "com01";

	@Override
	public List<BbsVo> selectBbsList() {
		ArrayList<BbsVo> list = new ArrayList<BbsVo>();
		String sql = "SELECT bbs_no, bbs_title, bbs_writer, bbs_reg_date, bbs_count FROM bbs ORDER BY bbs_no ASC";

		try (Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();) {

			while (rs.next()) {
				BbsVo vo = new BbsVo();
				vo.setBbsNo(rs.getInt("bbs_no"));
				vo.setBbsTitle(rs.getString("bbs_title"));
				vo.setBbsWriter(rs.getString("bbs_writer"));
				vo.setBbsRegDate(rs.getTimestamp("bbs_reg_date"));
				vo.setBbsCount(rs.getInt("bbs_count"));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public BbsVo selectBbs(int bbsNo) {
		BbsVo vo = null;
		String sql = "SELECT bbs_no,bbs_title,bbs_content,bbs_writer,bbs_reg_date,bbs_count FROM bbs WHERE bbs_no = ?";

		try (Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);) {

			pstmt.setInt(1, bbsNo);
			try (ResultSet rs = pstmt.executeQuery();) {
				if (rs.next()) {
					vo = new BbsVo();
					vo.setBbsNo(rs.getInt("bbs_no"));
					vo.setBbsTitle(rs.getString("bbs_title"));
					vo.setBbsContent(rs.getString("bbs_content"));
					vo.setBbsWriter(rs.getString("bbs_writer"));
					vo.setBbsRegDate(rs.getTimestamp("bbs_reg_date"));
					vo.setBbsCount(rs.getInt("bbs_count"));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vo;
	}

	@Override
	public int insertBbs(BbsVo vo) {
		int num = 0;
		String sql = "insert into bbs(bbs_no,bbs_title,bbs_content,bbs_writer)" + "values (seq_bbs_no.NEXTVAL,?,?,?)";
		try (Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);) {
			pstmt.setString(1, vo.getBbsTitle());
			pstmt.setString(2, vo.getBbsContent());
			pstmt.setString(3, vo.getBbsWriter());
			num = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	@Override
	public int updateBbs(BbsVo vo) {
		int num = 0;

		String sql = "UPDATE bbs SET bbs_title = ?, bbs_content=? where bbs_no =?";

		try (Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);) {

			pstmt.setString(1, vo.getBbsTitle());
			pstmt.setString(2, vo.getBbsContent());
			pstmt.setInt(3, vo.getBbsNo());

			num = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	@Override
	public int delBbs(int bbsNo) {
		int num = 0;

		String sql = "Delete from bbs where bbs_no = ?";

		try (Connection conn = DriverManager.getConnection(url, user, password);
				PreparedStatement pstmt = conn.prepareStatement(sql);

		) {
			pstmt.setInt(1, bbsNo);
			num = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

}
