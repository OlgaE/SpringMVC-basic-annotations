package com.demo.datacontrollers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.demo.model.Person;

@Controller
public class ControllerWithData {

	@Autowired
	@Qualifier("person")
	private Person person;
	
	@Autowired
	@Qualifier("person2")
	private Person person2;
	
	private String message;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	// The result is a jsp page.
	@RequestMapping(value = "/to-data-page", method = RequestMethod.GET)
	public String welcome(Model model) {

		model.addAttribute("key", message);
		return "data";
	}
	
	@RequestMapping(value = "/to-name-page", method = RequestMethod.GET)
	public String showname(Model model) {

		model.addAttribute("key", person.getName());
		model.addAttribute("key2", person2.getName());
		return "name";
	}
}
