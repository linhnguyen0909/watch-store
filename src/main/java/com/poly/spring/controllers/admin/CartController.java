package com.poly.spring.controllers.admin;

import java.nio.file.Paths;
import java.io.File;
import java.nio.file.Path;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.spring.entities.ProductEntity;
import com.poly.spring.service.ICartService;
import com.poly.spring.service.ICategory;
import com.poly.spring.service.IOrder;
import com.poly.spring.service.IProduct;

@Controller(value = "cartControllerOfAdmin")
@RequestMapping("/quan-tri/don-hang")
public class CartController {

	@Autowired
	private IOrder orderService;

	@RequestMapping(value = "",method = RequestMethod.GET)	
	public String index(ModelMap model, @RequestParam("page") int page, @RequestParam("limit") int limit) {
		model.put("page", page);
		model.put("limit", limit);
		Pageable pageable = PageRequest.of(page - 1, limit);
			model.put("totalPage", (int) Math.ceil((double) orderService.getTotalItem() / limit));
			model.put("orders", orderService.findAllList(pageable));		
		return "admin/order";
	}
	
	@RequestMapping(value = "/chi-tiet",method = RequestMethod.GET)	
	public String chitiet(ModelMap model, @RequestParam(value = "id", required = false) String id) {
//		model.put("orderDetails", orderService.findAllList(pageable));		
		return "admin/orderDetail";
	}
}
