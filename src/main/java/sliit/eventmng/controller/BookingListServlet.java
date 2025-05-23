package sliit.eventmng.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sliit.eventmng.dao.BookingDAO;
import sliit.eventmng.model.Booking;


//@WebServlet("/BookingListServlet")
public class BookingListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			List<Booking> bookings = BookingDAO.getAllBooking();
			request.setAttribute("bookings", bookings);
			RequestDispatcher dispatcher = request.getRequestDispatcher("booking-list.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			 request.setAttribute("errorMessage", "Error retrieving bookings");
			 request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}

}
