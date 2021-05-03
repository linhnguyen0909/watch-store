package com.poly.spring.controllers.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.bytebuddy.asm.Advice.Return;

@Controller
@RequestMapping("/check-pay")
public class CheckPayController {
	@RequestMapping(value = "",method = RequestMethod.GET)	
	public String index(ModelMap model) {
		return "web/shipping";
	}
	@RequestMapping(value = "/payment",method = RequestMethod.GET)	
	public String payment(ModelMap model) {
		return "web/payment";
	}
	@RequestMapping(value = "/order-striple",method = RequestMethod.GET)	
	public String order(ModelMap model) {
		return "web/orderstrip";
	}
}
