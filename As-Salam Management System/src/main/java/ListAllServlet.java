import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListAllServlet
 */
@WebServlet("/ListAllServlet")
public class ListAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	DonateDAO dao;
	EventDAO dao1;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListAllServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new DonateDAO();
        dao1 = new EventDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setAttribute("donationList", DonateDAO.getAllDonation());
		request.setAttribute("eventList", EventDAO.getAllEvent());
		RequestDispatcher view = request.getRequestDispatcher("/home.jsp");
		view.forward(request,response);
	}
	
}
