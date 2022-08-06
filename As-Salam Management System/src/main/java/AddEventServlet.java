
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEventServlet
 */
@WebServlet("/AddEventServlet")
public class AddEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 EventDAO dao;   
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEventServlet() {
        super();
        dao = new EventDAO();
        
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EventBean event = new EventBean(); 
		String dob = request.getParameter("eDate");
		String time = request.getParameter("eTime");
		
		event.setUserID(Integer.parseInt(request.getParameter("uId")));
		event.setMosqueID(Integer.parseInt(request.getParameter("mId")));
		event.setEventName(request.getParameter("eName"));
		event.setEventLocation(request.getParameter("eLocation"));
		event.setDate(dob);
		event.setTime(time);
		event.setEventGuest(request.getParameter("eGuest"));
		
		dao.add(event);
		
		//forward request if success we will be directed to home.jsp
		request.setAttribute("eventList", EventDAO.getAllEvent());
		RequestDispatcher view = request.getRequestDispatcher("eventAdmin.jsp");
		view.forward(request,response);
	}

}
