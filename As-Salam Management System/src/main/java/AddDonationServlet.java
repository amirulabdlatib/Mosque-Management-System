import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddDonationServlet
 */
@WebServlet("/AddDonationServlet")
public class AddDonationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    DonateDAO dao;   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDonationServlet() {
        super();
        dao = new DonateDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DonationBean donate = new DonationBean(); 
		donate.setUserID(Integer.parseInt(request.getParameter("userID")));
		donate.setDonationName(request.getParameter("donationName"));
		donate.setTotalDonation(request.getParameter("donationTotal"));
		donate.setDonationMonth(Integer.parseInt(request.getParameter("donationMonth")));
		
		dao.add(donate);
		
		//forward request if success we will be directed to home.jsp
		request.setAttribute("donationList", DonateDAO.getAllDonation());
		RequestDispatcher view = request.getRequestDispatcher("donationAdmin.jsp");
		view.forward(request,response);
		
	}

}
