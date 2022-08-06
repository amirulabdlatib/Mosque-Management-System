

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateEventServlet
 */
@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  EventDAO dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEventServlet() {
        super();
        dao = new EventDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int eventID = Integer.parseInt(request.getParameter("eventID"));
        EventBean eve = dao.getEventByID(eventID);
		request.setAttribute("event",eve );
		RequestDispatcher view = request.getRequestDispatcher("/updateEvent.jsp");
		view.forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		EventBean event = new EventBean();
		event.setUserID(Integer.parseInt(request.getParameter("uID")));
		event.setEventName(request.getParameter("eName"));
		event.setEventLocation(request.getParameter("eLocation"));
		event.setDate(request.getParameter("eDate"));
		event.setTime(request.getParameter("eTime"));
		event.setEventGuest(request.getParameter("eGuest"));
		event.setMosqueID(Integer.parseInt(request.getParameter("mosqueID")));
		
		int eventID = Integer.parseInt(request.getParameter("eveID"));
		event.setEventID(eventID);
		dao.updateEventByID(event);
		
		request.setAttribute("eventList",EventDAO.getAllEvent());
		RequestDispatcher view = request.getRequestDispatcher("eventAdmin.jsp");
		view.forward(request,response);
		
	}

}
