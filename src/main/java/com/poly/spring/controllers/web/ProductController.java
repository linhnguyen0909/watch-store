package com.poly.spring.controllers.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.spring.service.ICategory;
import com.poly.spring.service.IProduct;

@Controller(value = "productControllerOfWeb")
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	private IProduct productService;
	
	@Autowired
	private ICategory categoryService;
	
	@RequestMapping(method = RequestMethod.GET)	
	public String index(ModelMap model, @RequestParam("page") int page, @RequestParam("limit") int limit,@RequestParam(value = "category", required = false) String idcate) {
		model.put("page", page);
		model.put("limit", limit);
		Pageable pageable = PageRequest.of(page, limit);
		if(idcate != null) {
			int idoldcate = Integer.parseInt(idcate);
			model.put("products", productService.findAllByCategory(idoldcate));
		}else {
//			model.put("totalPage", (int) Math.ceil((double) productService.getTotalItem() / limit));
			model.put("products", productService.findAllList(pageable));
			
		}
		model.put("categories", categoryService.findAll());
		return "web/product";
	}
	
	
}
