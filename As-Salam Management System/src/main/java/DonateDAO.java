

import java.sql.*;
import java.util.*;

public class DonateDAO {
	static Connection con = null;
	static Statement stmt = null;
	static PreparedStatement ps=null;
	String donationName;
	String totalDonation;
	int userID, donationMonth, donationID ; 	
	
	//add product
	public void add(DonationBean bean) {
		//get product
		userID = bean.getUserID();
		donationName = bean.getDonationName();
		totalDonation = bean.getTotalDonation();
		donationMonth = bean.getDonationMonth();
		
		
		//query to database
		try {
		//2. create the connection object 
		con = ConnectionManager.getConnection();
		
		//3. create the statement object 		
		ps=con.prepareStatement("insert into donation(userID,donationName,totalDonation,donationMonth)values(?,?,?,?)");
		ps.setInt(1,userID);
		ps.setString(2, donationName);
		ps.setString(3, totalDonation);
		ps.setInt(4, donationMonth);
		
		//4. execute query 
		ps.executeUpdate();
		
		//5. close the connection object 
		con.close();
		
		}catch(Exception ex){ 
			System.out.println(ex); 
		} 
		
	}
	//list all product
	 public static List<DonationBean> getAllDonation() { 
		  List<DonationBean> donationList = new ArrayList<DonationBean>(); 
		  try { 
			  //2. create the connection object 			  
			  con = ConnectionManager.getConnection();
			  
			  //3. create the statement object 
			  stmt = con.createStatement(); 
			  
			  //4. execute query 
			  ResultSet rs = stmt.executeQuery("select * from donation order by donationID");
	  
			  while (rs.next()) { 
				  DonationBean donate = new DonationBean();
				  donate.setDonationID(rs.getInt("donationID"));	  
				  donate.setUserID(rs.getInt("userID"));
				  donate.setDonationName(rs.getString("donationName"));
				  donate.setTotalDonation(rs.getString("totalDonation"));
				  donate.setDonationMonth(rs.getInt("donationMonth"));
				  donationList.add(donate);
	  
			  } 
		  } catch (SQLException e) { 
			  e.printStackTrace(); 
		}
	  
	  return donationList; 
	  }
	
	//view donation
	 public static DonationBean getDonationByID(int donationID) {
			DonationBean donate = new DonationBean();
		    try {
		    	 //2. create the connection object 			    	
		    	con = ConnectionManager.getConnection();
		        
		    	//3. create the statement object 
		    	ps=con.prepareStatement("select * from donation where donationID=?");		        
		        ps.setInt(1, donationID);
		        
		        //4. execute query 		        
		        ResultSet rs = ps.executeQuery();

		        if (rs.next()) {	    
		        	
					  donate.setDonationID(rs.getInt("donationID"));  
					  donate.setUserID(rs.getInt("userID"));
					  donate.setDonationName(rs.getString("donationName"));
					  donate.setTotalDonation(rs.getString("totalDonation"));
					  donate.setDonationMonth(rs.getInt("donationMonth"));
					  
		        }
		    } catch (SQLException e) {
		        e.printStackTrace();
		    }

		    return donate;
		}

	//update donation
	 
	 public void updateDonationByID(DonationBean bean) {
		 
		 donationID = bean.getDonationID();
		 userID = bean.getUserID();
		 donationName = bean.getDonationName();
		 totalDonation = bean.getTotalDonation();
		 donationMonth = bean.getDonationMonth();
		 
		 String searchQuery = "UPDATE donation SET userID = '" + userID + "', donationName ='" + donationName + 
				 "', totalDonation='" + totalDonation + "', donationMonth='" + donationMonth + "' WHERE donationID= '" 
				 + donationID + "'  ";
		 try {
				//call getConnection() method 
				con = ConnectionManager.getConnection();
				//3. create statement 
				stmt = con.createStatement();
				//4. execute query
				stmt.executeUpdate(searchQuery);
				//5. close connection
				con.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			
			}
	 }
	 
	//delete donation
	 public void deleteDonationByID(int donationID) {
		 try {
			 //2. create the connection object 				    	
			 con = ConnectionManager.getConnection();

			 //3. create the statement object 
			 ps = con.prepareStatement("delete from donation where donationID=?");
			 ps.setInt(1, donationID);

			 //4. execute query 	
			 ps.executeUpdate();

		 } catch (SQLException e) {
			 e.printStackTrace();
		 }
	 }
	 
}
