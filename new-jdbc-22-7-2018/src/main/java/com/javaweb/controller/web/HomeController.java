package com.javaweb.controller.web;

import java.io.IOException;
import java.util.ResourceBundle;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaweb.model.UserModel;
import com.javaweb.service.ICategoryService;
import com.javaweb.service.IUserService;
import com.javaweb.utils.FormUtil;
import com.javaweb.utils.SessionUtil;
import com.mysql.cj.Session;

@WebServlet(urlPatterns = { "/trang-chu", "/dang-nhap","/thoat" })
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = -374774350676466657L;
	@Inject
	private ICategoryService categoryService;

	@Inject
	private IUserService userService;
	
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");


//	private INewsService newsService;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			String message = request.getParameter("message");
			String alert = request.getParameter("alert");
			if(message != null && alert != null) {
				request.setAttribute("message", resourceBundle.getString("username_password_invalid"));
				request.setAttribute("alert", alert);
			}
			RequestDispatcher rd = request.getRequestDispatcher("/views/login.jsp");
			rd.forward(request, response);
		} else if (action != null && action.equals("logout")) {
			SessionUtil.getInstance().removeValue(request, "USERMODEL");
			response.sendRedirect(request.getContextPath()+"/trang-chu");
		} else {
			request.setAttribute("categories", categoryService.findAll());
//			request.setAttribute("news", newsService.findAll());
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("login")) {
			UserModel model = FormUtil.toModel(UserModel.class, request);
			model = userService.finByUserNameAndPasswordAndStatus(model.getUserName(), model.getPassword(), 1);
			if (model != null) {
				SessionUtil.getInstance().putValue(request, "USERMODEL", model);
				if (model.getRole().getCode().equals("user")) {
					response.sendRedirect(request.getContextPath() + "/trang-chu");

				} else if (model.getRole().getCode().equals("admin")) {
					response.sendRedirect(request.getContextPath() + "/admin-home");
				}
			} else {
				response.sendRedirect(request.getContextPath() + "/dang-nhap?action=login&message=username_password_invalid&alert=danger");
			}
		}
	}
}
