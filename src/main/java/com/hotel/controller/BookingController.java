package com.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.hotel.model.Booking;
import com.hotel.service.BookingService;

@Controller
public class BookingController {

	@Autowired
	private BookingService bookingService;

	/*
	 * @RequestMapping("/bookRoom") public String openForm(@RequestParam(value =
	 * "roomNo", required = false) Integer roomNo, Model model) {
	 * 
	 * if (roomNo != null) {
	 * 
	 * // 🔥 Check karo room already booked hai ya nahi boolean isBooked =
	 * bookingService.isRoomBooked(roomNo);
	 * 
	 * if (isBooked) { model.addAttribute("error", "❌ Room already booked!"); return
	 * "error-page"; // 👈 new page }
	 * 
	 * model.addAttribute("roomNo", roomNo); }
	 * 
	 * return "booking-form"; }
	 */
	@RequestMapping("/bookRoom")
	public String openForm(@RequestParam(value = "roomNo", required = false) Integer roomNo, Model model) {

		if (roomNo != null) {

			// 🔒 check booked
			boolean isBooked = bookingService.isRoomBooked(roomNo);

			if (isBooked) {
				model.addAttribute("error", "❌ Room already booked!");
				return "error-page";
			}

			// ✅ roomNo bhejo
			model.addAttribute("roomNo", roomNo);
		}

		return "booking-form";
	}

	@RequestMapping(value = "/saveBooking", method = RequestMethod.POST)
	public String saveBooking(@ModelAttribute Booking booking, HttpSession session, Model model) {

		// 📅 Date validation
		if (booking.getCheckIn().after(booking.getCheckOut()) || booking.getCheckIn().equals(booking.getCheckOut())) {

			model.addAttribute("error", "Check-out must be after Check-in");
			return "booking-form";
		}

		// 📱 Mobile validation
		if (booking.getMobile() == null || !booking.getMobile().matches("\\d{10}")) {

			model.addAttribute("error", "Invalid mobile number");
			return "booking-form";
		}

		// ✅ If valid
		session.setAttribute("bookingData", booking);
		return "payment";
	}

	@RequestMapping("/confirmBooking")
	public String confirmBooking(HttpSession session, Model model) {

		Booking booking = (Booking) session.getAttribute("bookingData");

		if (booking != null) {

			// 🔥 FINAL CHECK (manual entry bhi block hoga)
			boolean isBooked = bookingService.isRoomBooked(booking.getRoomNo());

			if (isBooked) {
				model.addAttribute("error", "❌ Room already booked!");
				return "room-already-booked"; // 👈 new page
			}

			// ✅ Save booking
			bookingService.saveBooking(booking);

			model.addAttribute("booking", booking);
			session.removeAttribute("bookingData");
		}

		return "success";
	}

}