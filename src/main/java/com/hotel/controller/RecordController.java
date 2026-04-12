package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RecordController {

	@RequestMapping("/guestRecord")
	public String viewrecord() {
		
		return "guest-record";
	}
}
