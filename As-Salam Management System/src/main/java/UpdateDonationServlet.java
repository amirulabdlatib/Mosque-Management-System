

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateDonationServlet
 */
@WebServlet("/UpdateDonationServlet")
public class UpdateDonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       DonateDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateDonationServlet() {
        super();
        dao = new DonateDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int donationID = Integer.parseInt(request.getParameter("donationID"));
        DonationBean dont = dao.getDonationByID(donationID);
		request.setAttribute("donate",dont );
		RequestDispatcher view = request.getRequestDispatcher("/updateDonation.jsp");
		view.forward(request,response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		DonationBean donate = new DonationBean();
		donate.setUserID(Integer.parseInt(request.getParameter("uID")));
		donate.setDonationName(request.getParameter("dName"));
		donate.setTotalDonation(request.getParameter("tDonation"));
		donate.setDonationMonth(Integer.parseInt(request.getParameter("dMonth")));
		
		int donateID = Integer.parseInt(request.getParameter("donaID"));
		donate.setDonationID(donateID);
		dao.updateDonationByID(donate);
		
		request.setAttribute("donationList",DonateDAO.getAllDonation());
		RequestDispatcher view = request.getRequestDispatcher("donationAdmin.jsp");
		view.forward(request,response);
		
		
	}
	
}
