package air.dao;

public class DaoFactory {
	public static UserDao getUserDaoInstance() {
		UserDaoFactory userDaoFactory = UserDaoFactory.getUserDaoFactory();
		return userDaoFactory.getUserDao();
	}
	
	public static UserDao getSyllabusDaoInstance() {
		return null;
	} 
	
	public static UserDao getAnncDaoInstance() {
		return null;
	}
}
