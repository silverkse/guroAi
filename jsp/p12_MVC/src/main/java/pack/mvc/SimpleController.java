package pack.mvc;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SimpleController extends HttpServlet {

	private void processRequest(HttpServletRequest req, HttpServletResponse resp) {
		
		String type = req.getParameter("type");
		
		Object resultObject = null;
		if (type == null || type.equals("greeting")) {
			resultObject = "안녕하세요.";
		} else if (type.equals("date")) {
//			resultObject = new java.util.Date();	// 두 방식 다 상관 없음
			resultObject = new Date();				// 위 방식과 같음
		} else {
			resultObject = "Invalid Type";
		}
		
		req.setAttribute("result", resultObject);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/simpleView.jsp");
		
		// 포워딩
		
		try {
			dispatcher.forward(req, resp);
		} catch (ServletException e) {
			System.out.println("ServletException e : " + e.getMessage());
		} catch (IOException e) {
			System.out.println("IOException : " + e.getMessage());
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);
	}

}
