package com.mycompany.myapp;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller // 컨트롤러 지정
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 뷰의 요청 경로 지정
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		// 로직 수행 
		logger.info("Welcome home! The client locale is {}.", locale); 
		
		// Model 객체를 이용해서, view로  Data 전달
		model.addAttribute("controller", "HomeController" );
		model.addAttribute("method", "home()" );

		return "home";
	}
	
}
