package com.demo.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
//@RequestMapping("/ok")
public class SpringMvcController {

	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	@RequestMapping(value = "/to-showdate-page", method = RequestMethod.GET)
	public String welcome(Locale locale, Model model) {

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date) + " and the locale is "+ locale;
		model.addAttribute("dateVisited", formattedDate);
		return "showdate";
	}

	@RequestMapping(value = "/to-new-page", method = RequestMethod.GET)
	public String handleRequest() {
		return "new";
	}
	
	@RequestMapping(value = "/to-form-page", method = RequestMethod.GET)
	public String handleRequest4() {
		return "form";
	}

	@RequestMapping(value = "/hellopage.htm", method = RequestMethod.GET)
	public String handleRequest2() {
		return "hellopage";
	}
	
	@RequestMapping(value = "/jspractice.htm", method = RequestMethod.GET)
	public String handleRequest3() {
		return "jspractice";
	}
}
