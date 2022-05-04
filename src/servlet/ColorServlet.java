package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/colorSelect")
public class ColorServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProc(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProc(req, resp);
	}

	protected void doProc(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String param = req.getParameter("color");

		switch (param) {
		case "1":
			// 빨간색
			req.setAttribute("color", "red");
			break;
		case "2":
			// 파란색
			req.setAttribute("color", "blue");
			break;
		case "3":
			// 초록색
			req.setAttribute("color", "green");
			break;
		default:
			break;
		}
		req.getRequestDispatcher("colorSelect.jsp").forward(req, resp);
	}

}
