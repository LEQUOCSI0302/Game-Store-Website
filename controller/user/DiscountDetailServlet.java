package controller.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.beans.Discounts;
import model.service.DiscountsService;

/**
 * Servlet implementation class DiscountDetailServlet
 */
@WebServlet("/DiscountDetailServlet")
public class DiscountDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private DiscountsService discountsService = new DiscountsService();
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public DiscountDetailServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		/**
		 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
		 */
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			long gameId =  0;
			try {
				gameId = Long.parseLong(request.getParameter("id"));
			} catch (Exception e) {
				response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Thiếu hoặc sai discount id");
				return;
			}
			Discounts disountDetail = discountsService.getDiscountsDetailsById(gameId);
			// Thiết lập header và trả về JSON
	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");
	        
	        // Dùng Gson để chuyển Java Object sang JSON
	        String json = new Gson().toJson(disountDetail);
	        response.getWriter().write(json);
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
