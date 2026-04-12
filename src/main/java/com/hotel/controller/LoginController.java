package com.hotel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.hotel.model.User;
import com.hotel.service.UserService;

@Controller
public class LoginController {

	@Autowired
	private UserService userService;

	@RequestMapping("/")
	public String loginPage() {
		return "login";
	}

	@RequestMapping(value = "/doLogin", method = RequestMethod.POST)
	public String doLogin(@RequestParam String username, @RequestParam String password, Model model) {

		User user = userService.login(username, password);

		if (user != null) {
			return "dashboard"; // success page
		} else {
			model.addAttribute("error", "Invalid username or password");
			return "login";
		}
	}

}