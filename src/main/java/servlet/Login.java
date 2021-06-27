package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AccountInfo;
import model.LoginLogic;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		AccountInfo loginUser = (AccountInfo) session.getAttribute("loginUser");
		
		if(loginUser == null) {
			response.sendRedirect("/A_channel");
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		AccountInfo account = new AccountInfo(username, password);

		LoginLogic loginLogic = new LoginLogic();
		boolean isLogin = loginLogic.checkUser(account);

		if (isLogin) {
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", account);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/main.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect("/A_channel");
		}

	}

}
