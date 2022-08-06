import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/userS")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			//get the current session
			HttpSession session = request.getSession(true);
			//set current session to null.
			session.setAttribute("asdas", null);
			//destroy session
			session.invalidate();
			//redirect to login page
			response.sendRedirect("index.jsp");
		}catch (Throwable ex) {
			System.out.println(ex);
		}
	}
	
	

	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, java.io.IOException { 
		try { 
			UserBean user = new UserBean();
			user.setUsername(request.getParameter("un"));
			user.setPassword(request.getParameter("pw"));
			user = UserDAO.login(user);

			if (user.isValid()) { // logged-in page
				HttpSession session = request.getSession(true); 
				session.setAttribute("userid", user.getUserid());
				session.setAttribute("mosqueid",4444);
				session.setAttribute("username", user.getUsername());
				request.setAttribute("userList", UserDAO.getAll());
				RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
				rd.forward(request, response);
			} else response.sendRedirect("invalidlogin.jsp"); // error page 
		}
		catch(Throwable theException)
		{
			System.out.println(theException);
		}
	}
}