

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewDonationController
 */
@WebServlet("/ViewDonationController")
public class ViewDonationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 DonateDAO dao;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewDonationController() {
        super();
        dao = new DonateDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int donationID = Integer.parseInt(request.getParameter("donationID"));
		request.setAttribute("donate", DonateDAO.getDonationByID(donationID));
		RequestDispatcher view = request.getRequestDispatcher("/viewDonation.jsp");
		view.forward(request,response);
	}
}
