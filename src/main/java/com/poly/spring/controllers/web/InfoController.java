package com.poly.spring.controllers.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/thong-tin-khach-hang")
public class InfoController {
	@RequestMapping(method = RequestMethod.GET)	
	public String index(ModelMap model, HttpSession session) {
		return "web/info";
	}
}
