package air.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

public interface UserDao {
	public void create(String userName, String password);
	public String getPwd(String userName);
	public ArrayList<ArrayList> getUserList();
	public boolean delete(int userID);
	public boolean checkUserExists(String userName);

}
