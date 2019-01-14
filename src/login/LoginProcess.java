package login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginProcess
 */

@WebServlet
(asyncSupported = true,
description = "loginprocess",
urlPatterns = { "/loginProcess" })

public class LoginProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LoginProcess() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");
		
		if (user_name.equals("brian") && password.equals("1234")) {
			response.getWriter().append("Welcome "+user_name);
			response.sendRedirect("form.jsp");
		} else {
			response.getWriter().append("Wrong Credentials \n");
			response.getWriter().append("Username: "+user_name);
			response.getWriter().append("Password: "+password);
		}
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
