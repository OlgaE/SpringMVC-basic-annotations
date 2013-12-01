package com.demo.datacontrollers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ControllerWithData {

	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@RequestMapping(value = "/to-data-page", method = RequestMethod.GET)
	public String welcome(Model model) {

		model.addAttribute("key", message);
		return "data";
	}
}
