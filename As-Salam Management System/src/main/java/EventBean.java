

public class EventBean {
	
	private int eventID;
	private int userID;
	private String eventName;
	private String eventLocation;
	private String date;
	private String time;
	private String eventGuest;
	private int mosqueID;
	public boolean valid;
	
	public int getEventID() {
		return eventID;
	}
	public void setEventID(int eventID) {
		this.eventID = eventID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getEventLocation() {
		return eventLocation;
	}
	public void setEventLocation(String eventLocation) {
		this.eventLocation = eventLocation;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getEventGuest() {
		return eventGuest;
	}
	public void setEventGuest(String eventGuest) {
		this.eventGuest = eventGuest;
	}
	public int getMosqueID() {
		return mosqueID;
	}
	public void setMosqueID(int mosqueID) {
		this.mosqueID = mosqueID;
	}
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
	

}
