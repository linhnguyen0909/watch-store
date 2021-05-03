package com.poly.spring.controllers.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.poly.spring.entities.AccountEntity;

@Controller
@RequestMapping("/checkout")
public class CheckoutController {
	@RequestMapping(method = RequestMethod.GET)	
	public String index(ModelMap model, HttpSession session) {
		AccountEntity account = (AccountEntity) session.getAttribute("user");
		if(account == null) {
			return "redirect:/dang-nhap";
		}
//		model.put("user",userService.findAll());
		return "web/checkout";
	}
}
