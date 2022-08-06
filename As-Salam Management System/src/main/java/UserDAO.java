import java.sql.*;
import java.util.*;

public class UserDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;

	public static UserBean login(UserBean bean) {
		// preparing some objects for connection 		
		Statement stmt = null;
		String username = bean.getUsername();
		String password = bean.getPassword();
		String searchQuery = "select * from user where userName='" 
				+ username + "' AND userPassword='" + password + "'";
		//------prepared statement
		//String searchQuery = "select * from user where userid=? and mosqueid=? and username=? and password=?";
		
		// used to trace the process
		System.out.println("in UserBean.login");
		System.out.println("Your username is " + username);
		System.out.println("Your password is " + password);
		System.out.println("Query: " + searchQuery);
		try {
			// connect to DB
			currentCon = ConnectionManager.getConnection();
			stmt = currentCon.createStatement();
			//----prepared statement
			//PreparedStatement stmt = currentCon.prepareStatement(searchQuery);
	        //stmt.setString(1, username);
	        //stmt.setString(2, password);
			rs = stmt.executeQuery(searchQuery);
			boolean more = rs.next();

			// if user does not exist
			if (!more) {
				System.out.println("Sorry, you are not a registered user! " + "Please sign up first");
				bean.setValid(false);
			}
			// if user exists
			else if (more) {
				int userid = rs.getInt("userid");
				int mosqueid = rs.getInt("mosqueid");
				System.out.println("Welcome " + userid);
				bean.setUserid(userid);
				bean.setMosqueid(mosqueid);
				bean.setValid(true);
			}
		} catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		} // some exception handling
		finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) { }
				rs = null;
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) { } 
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) { }
				currentCon = null;
			}
		}
		return bean;
	}
	
	public static List<UserBean> getAll(){
		// preparing some objects/variable 
       List<UserBean> userList = new LinkedList<>();
        String sql = "select userName, userID from user";
        Statement stmt = null;
        // trace process
        System.out.println("in UserBean.getAll");
        try {        	
        	// connect to DB
        	currentCon = ConnectionManager.getConnection();
        	stmt = currentCon.createStatement();
        	rs = stmt.executeQuery(sql);

        	// iterate over the ResultSet, add row into object and object into list
            while(rs.next()){ 
            	UserBean ub = new UserBean();
            	ub.setUsername(rs.getString(1));
            	ub.setUserid(rs.getInt(2));
            	userList.add(ub);
            }
        } catch (Exception ex) {
			System.out.println("Log In failed: An Exception has occurred! " + ex);
		} // some exception handling
		finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (Exception e) {
				}
				rs = null;
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (Exception e) { }
				stmt = null;
			}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e) { }
				currentCon = null;
			}
		}       
        return userList;
    }
}