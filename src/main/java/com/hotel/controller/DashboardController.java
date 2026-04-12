package com.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.hotel.model.Booking;
import com.hotel.service.BookingService;

@Controller
public class DashboardController {

	@Autowired
	private BookingService bookingService;

	@RequestMapping("/guests")
	public String showGuests(Model model) {
		model.addAttribute("bookings", bookingService.getAllBookings());
		return "guest-list";
	}

	@RequestMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "login";
	}

	// 🔥 UPDATED PART (IMPORTANT)
	@RequestMapping("/rooms")
	public String rooms(Model model) {

		List<Booking> bookings = bookingService.getAllBookings();
		model.addAttribute("bookings", bookings);

		return "rooms";
	}

	@RequestMapping("/services")
	public String services() {
		return "services";
	}

	@RequestMapping("/form")
	public String form() {
		return "form";
	}

	@RequestMapping("/checkout")
	public String checkout(Model model) {
		List<Booking> bookings = bookingService.getAllBookings();
		model.addAttribute("bookings", bookings);
		return "checkout";
	}

	@RequestMapping("/deleteBooking/{roomNo}")
	public String deleteBooking(@PathVariable int roomNo) {
		bookingService.deleteBooking(roomNo);
		return "redirect:/checkout";
	}
}