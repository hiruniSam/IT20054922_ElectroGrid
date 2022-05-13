package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class customersAPI
 */
@WebServlet("/customersAPI")
public class customersAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Customer custObj = new Customer();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customersAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String output =custObj.insertCustomer(request.getParameter("NIC"), 
				   request.getParameter("CustomerFirstName"), 
				   request.getParameter("CustomerLastName"), 
				   request.getParameter("HomeNo"),
				   request.getParameter("Street"),
				   request.getParameter("HomeCity"),
				   request.getParameter("CustomerPhone"),
				   request.getParameter("AccountNo"),
		           request.getParameter("Password"));  

		response.getWriter().write(output);

		//doGet(request, response);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
