package air.service;

import java.util.ArrayList;

import air.dao.DaoFactory;
import air.dao.UserDao;
import air.vo.User;

public class LoginService {
	UserDao userDao = DaoFactory.getUserDaoInstance();
	
	private boolean checkUserExists(User user) {
		String userName = user.getUserName();
		return userDao.checkUserExists(userName);
		
	}
	
	public boolean checkPwd(User user){
		String userName = user.getUserName();
		if(checkUserExists(user)) {
			String storedPassword = userDao.getPwd(userName);
			String inputPassword = user.getPassword();
			return storedPassword.equals(inputPassword);
		}
		return false;
	}
	
	public void createAccount(User user) {
		
	}
	
	public ArrayList<ArrayList> getUserList() {
		return null;
		
	}
	
	public void removeUser(User user) {
		
	}
	
	public void enrollUserToCourse(User user) {
		
	}
	
	public void enrollUser(User user) {
		
	}
	
	public void assignRole(User user) {
		
	}
}
