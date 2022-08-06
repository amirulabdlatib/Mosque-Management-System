

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ViewEventServlet
 */
@WebServlet("/ViewEventServlet")
public class ViewEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 EventDAO dao;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewEventServlet() {
        super();
        dao = new EventDAO();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int eventID = Integer.parseInt(request.getParameter("eventID"));
		request.setAttribute("event", EventDAO.getEventByID(eventID));
		RequestDispatcher view = request.getRequestDispatcher("/viewEvent.jsp");
		view.forward(request,response);
		
	}

}
