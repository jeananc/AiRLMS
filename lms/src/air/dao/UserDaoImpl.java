package air.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserDaoImpl extends DBConnect implements UserDao{
	PreparedStatement pstmt;
	String sql;
	ResultSet rs;
	DBConnect dbConnect;
	Connection conn;
	
	@Override
	public void create(String userName, String password) {
		sql = "INSERT INTO user (`userName`, `password`) VALUES (?, ?)";
		dbConnect = new DBConnect();
		conn = dbConnect.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			dbConnect.close();
		}
		
	}
	
	@Override
	public String getPwd(String userName) {
		sql = "Select password From user Where userName = ?";
		
		String password = null;
		dbConnect = new DBConnect();
		conn = dbConnect.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				password = rs.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			dbConnect.close();
		}
		
		
		return password;
	}

	@Override
	public ArrayList<ArrayList> getUserList() {
		sql = "Select * From user enrollment";
		ArrayList<ArrayList> userList = new ArrayList<ArrayList>();
		dbConnect = new DBConnect();
		conn = dbConnect.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ArrayList userInfo = new ArrayList();
				userInfo.add(rs.getInt(1));
				userInfo.add(rs.getString(2));
				userInfo.add(rs.getString(4));
				userList.add(userInfo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			dbConnect.close();
		}
		return userList;
	}

	@Override
	public boolean delete(int userID) {
		sql = "DELETE FROM lms.user WHERE userID=?";
		dbConnect = new DBConnect();
		conn = dbConnect.getConnection();
		int rowDeleted = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userID);
			rowDeleted = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			dbConnect.close();
		}
		
		if(rowDeleted == 1) {
			return true;
		} else {
			return false;
		}
		
	}

	@Override
	public boolean checkUserExists(String userName) {
		Boolean isExist;
		sql = "SELECT * FROM lms.user WHERE userName=?";
		dbConnect = new DBConnect();
		conn = dbConnect.getConnection();
		int rowDeleted = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userName);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				isExist = true;
			} else {
				isExist = false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			dbConnect.close();
		}
		
		if(isExist) {
			return true;
		} else {
			return false;
		}
	}
	
}
