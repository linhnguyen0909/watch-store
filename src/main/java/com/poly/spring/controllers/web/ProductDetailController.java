package com.poly.spring.controllers.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.poly.spring.service.IProduct;

@Controller
@RequestMapping("/productdetail")
public class ProductDetailController {
	
	@Autowired
	private IProduct productService;
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)	
	public String index(@PathVariable int id, ModelMap model) {
		model.put("productdetail",productService.findById(id));
		return "web/productDetail";
	}
	
//	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
//	public String delete(ModelMap model) {
//		userService.changeStatus(0, id);
//		return "redirect:/quan-tri/nguoi-dung?page=1&limit=5";
//	}
}
