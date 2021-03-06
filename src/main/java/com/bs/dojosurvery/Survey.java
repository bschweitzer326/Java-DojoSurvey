package com.bs.dojosurvery;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Survey {
	@RequestMapping("/")
	public String home() {
		return "survey.jsp";
	}
	
	@RequestMapping("/result")
	public String result() {
		return "results.jsp";
	}
	
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public String data(@RequestParam(value = "name") String name, @RequestParam(value = "location") String location, @RequestParam(value = "language") String language, @RequestParam(value = "comment") String comment, HttpSession session) {
		
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("language", language);
		session.setAttribute("comment", comment);
		return "redirect:/result";
	}
	
}
