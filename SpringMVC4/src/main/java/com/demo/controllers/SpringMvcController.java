package com.demo.controllers;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ok")
public class SpringMvcController {
	
	@RequestMapping(value="/vot", method=RequestMethod.GET)
	public String welcome(Model model){
		
		Date date = new Date();
		model.addAttribute("dateVisited", date);
		return "welcome";
	}

}
