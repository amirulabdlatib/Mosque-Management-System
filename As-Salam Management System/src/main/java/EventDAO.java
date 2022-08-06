

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EventDAO {

	static Connection con = null;
	static Statement stmt = null;
	static PreparedStatement ps = null;
	String eventName,eventLocation;
	String eventDate,eventTime,eventGuest;
	int userID, mosqueID, eventID ;
	
	//add event
		public void add(EventBean bean) {
			//get event
			userID = bean.getUserID();
			mosqueID = bean.getMosqueID();
			eventName = bean.getEventName();
			eventLocation = bean.getEventLocation();
			eventDate = bean.getDate();
			eventTime = bean.getTime();
			eventGuest = bean.getEventGuest();		
			
			//query to database
			try {
			//2. create the connection object 
			con = ConnectionManager.getConnection();
			
			//3. create the statement object 		
			ps=con.prepareStatement("insert into event(userID,eventName,eventLocation,eventDate,eventTime,eventGuest,mosqueID)values(?,?,?,?,?,?,?)");
			ps.setInt(1,userID);
			ps.setString(2, eventName);
			ps.setString(3, eventLocation);
			ps.setString(4, eventDate);
			ps.setString(5, eventTime);
			ps.setString(6, eventGuest);
			ps.setInt(7, mosqueID);
			//4. execute query 
			ps.executeUpdate();
			
			//5. close the connection object 
			con.close();
			
			}catch(Exception ex){ 
				System.out.println(ex); 
			} 
			
		}
		
		public static List<EventBean> getAllEvent() { 
			  List<EventBean> eventList = new ArrayList<EventBean>(); 
			  try { 
				  //2. create the connection object 			  
				  con = ConnectionManager.getConnection();
				  
				  //3. create the statement object 
				  stmt = con.createStatement(); 
				  
				  //4. execute query 
				  ResultSet rs = stmt.executeQuery("select * from event order by eventID");
		  
				  while (rs.next()) { 
					 EventBean event = new EventBean();
				
					 event.setEventID(rs.getInt("eventID"));
					 event.setUserID(rs.getInt("userID"));
					 event.setEventName(rs.getString("eventName"));
					 event.setEventLocation(rs.getString("eventLocation"));
					 event.setDate(rs.getString("eventDate"));
					 event.setTime(rs.getString("eventTime"));
					 event.setEventGuest(rs.getString("eventGuest"));
					 event.setMosqueID(rs.getInt("mosqueID"));
					 eventList.add(event);
		  
				  } 
			  } catch (SQLException e) { 
				  e.printStackTrace(); 
			}
		  
		  return eventList; 
		  }
		
		 public static EventBean getEventByID(int eventID) {
				EventBean event = new EventBean();
			    try {
			    	 //2. create the connection object 			    	
			    	con = ConnectionManager.getConnection();
			        
			    	//3. create the statement object 
			    	ps=con.prepareStatement("select * from event where eventID=?");		        
			        ps.setInt(1, eventID);
			        
			        //4. execute query 		        
			        ResultSet rs = ps.executeQuery();

			        if (rs.next()) {	    
			        	
			        	 event.setEventID(rs.getInt("eventID"));
						 event.setUserID(rs.getInt("userID"));
						 event.setEventName(rs.getString("eventName"));
						 event.setEventLocation(rs.getString("eventLocation"));
						 event.setDate(rs.getString("eventDate"));
						 event.setTime(rs.getString("eventTime"));
						 event.setEventGuest(rs.getString("eventGuest"));
						 event.setMosqueID(rs.getInt("mosqueID"));
						  
			        }
			    } catch (SQLException e) {
			        e.printStackTrace();
			    }

			    return event;
			}
		
		 //update event
		 
		 public void updateEventByID(EventBean bean) {
			 
			 
			 	eventID = bean.getEventID();
			    userID = bean.getUserID();
				mosqueID = bean.getMosqueID();
				eventName = bean.getEventName();
				eventLocation = bean.getEventLocation();
				eventDate = bean.getDate();
				eventTime = bean.getTime();
				eventGuest = bean.getEventGuest();		
				
			 String searchQuery = "UPDATE event SET userID = '" + userID + "', eventName ='" + eventName + 
					 "', eventLocation = '" + eventLocation + "', eventDate='" +eventDate+ "',eventTime='"+ eventTime
					 + "' ,eventGuest = '" +eventGuest+ "', mosqueID ='"+mosqueID+"' WHERE eventID= '" 
					 + eventID + "'";
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
		 public void deleteEventByID(int eventID) {
			 try {
				 //2. create the connection object 				    	
				 con = ConnectionManager.getConnection();

				 //3. create the statement object 
				 ps = con.prepareStatement("delete from event where eventID=?");
				 ps.setInt(1, eventID);

				 //4. execute query 	
				 ps.executeUpdate();

			 } catch (SQLException e) {
				 e.printStackTrace();
			 }
		 }
		 
		
	
}
