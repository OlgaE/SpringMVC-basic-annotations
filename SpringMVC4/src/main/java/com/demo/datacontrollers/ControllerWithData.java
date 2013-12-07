package com.demo.datacontrollers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	public void setPerson(Person person) {
		this.person = person;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	//
	// These methods are "request handlers":
	//
	
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
	
	// The result is an object of class Person, and
	// it is included in the HTTP response.
	@RequestMapping(value = "/get-person", method = RequestMethod.GET, produces="application/json; charset=utf-8")
	@ResponseBody
	public Person getPerson() {
		return person;
	}
	
	@RequestMapping(value = "/to-ajaxtest-page", method = {RequestMethod.GET, RequestMethod.POST})
	public String ajaxpage(){
		return "ajaxpage";
	}
	
	@RequestMapping(value = "/ajaxJsonRequest", method = {RequestMethod.GET, RequestMethod.POST})
	public @ResponseBody String ajaxJsonRequest(HttpServletRequest request){
		
		String message = request.getParameter("message");
		System.out.println("Testing..)");
		return "Hello" + message;
	}
}
