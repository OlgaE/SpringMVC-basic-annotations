package com.demo.controllers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ok")
public class SpringMvcController {
	
	@RequestMapping(value="/vot", method=RequestMethod.GET)
	public String welcome(Locale locale, Model model){
		
		//Date date = new Date();
		//model.addAttribute("dateVisited", date);
		
		Date date = new Date();
        DateFormat dateFormat = 
                    DateFormat.getDateTimeInstance(DateFormat.LONG, 
                    DateFormat.LONG, locale);

        String formattedDate = dateFormat.format(date) + " and the locale is " + locale;

        model.addAttribute("dateVisited", formattedDate );
		
		return "welcome";
	}
	
	 @RequestMapping(value="/home", method=RequestMethod.GET)
	 public String handleRequest(){
	 return "newpage";
	 }

}
