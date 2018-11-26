package com.ashutosh.demo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	@RequestMapping("/showForm")
	public String showForm() {
		System.out.println("show form controller");
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "helloworld";
	}
	
	
	@RequestMapping("/processFormSecondVersion")
	public String processFormData(HttpServletRequest httpServletRequest, Model model) {
		String studentName = httpServletRequest.getParameter("studentName");
		studentName = studentName.toUpperCase();
		
		String result = "Hi " + studentName; 
		model.addAttribute("message", result);
		
		return "helloworld";
	}

	@RequestMapping("/processFormThirdVersion")
	public String processFormThirdVersion(@RequestParam("studentName") String studentName, Model model) {
		studentName = studentName.toUpperCase();
		
		String result = "Hi " + studentName; 
		model.addAttribute("message", result);
		
		return "helloworld";
	}

}
