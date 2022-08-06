
public class DonationBean {
	
	private int donationID;
	private int userID;
	private String donationName;
	private String totalDonation;
	private int donationMonth;
	public boolean valid;
	
	public int getDonationID() {
		return donationID;
	}
	public void setDonationID(int donationID) {
		this.donationID = donationID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getDonationName() {
		return donationName;
	}
	public void setDonationName(String donationName) {
		this.donationName = donationName;
	}
	public String getTotalDonation() {
		return totalDonation;
	}
	public void setTotalDonation(String totalDonation) {
		this.totalDonation = totalDonation;
	}
	public int getDonationMonth() {
		return donationMonth;
	}
	public void setDonationMonth(int donationMonth) {
		this.donationMonth = donationMonth;
	}
	public boolean isValid() {
		return valid;
	}
	public void setValid(boolean valid) {
		this.valid = valid;
	}
}
