package com.poly.spring.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.poly.spring.dto.StatictisAccountByMonth;
import com.poly.spring.service.IAccount;

@Controller(value = "homeControllerOfAdmin")
@RequestMapping("/quan-tri/") // url
public class HomeController {
	
	@Autowired
	private IAccount accountService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model) {
		StatictisAccountByMonth statictisAccountByMonth = accountService.statisticAccountByMonth();

		ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
		String json = null;
		
		try {
			json = ow.writeValueAsString(statictisAccountByMonth);
		} catch (Exception ex) {
				
		}
		
		model.put("statisticAccountByMonth", json);

		return "admin/home"; // vè trang nào
	}
}
