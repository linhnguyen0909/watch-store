package com.poly.spring.controllers.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.spring.dto.OrderDto;
import com.poly.spring.entities.AccountEntity;
import com.poly.spring.service.ICartService;

@Controller
@RequestMapping("/gio-hang")
public class CartController {
	
	@Autowired
	private ICartService cartService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model, HttpSession session) {
		AccountEntity account = (AccountEntity) session.getAttribute("user");
		if (account == null) {
			return "redirect:/dang-nhap";
		}
//		model.put("user",userService.findAll());
		OrderDto orderDto = (OrderDto) session.getAttribute("cart");
		session.setAttribute("totalPrice", cartService.getTotalPrice(orderDto.getListDetail()));
		return "web/cart";
	}
	
	@GetMapping("/addProduct")
	public String doGetAddProduct(@RequestParam("id") Integer id,
			HttpSession session) {
		OrderDto orderDto = (OrderDto) session.getAttribute("cart");
		cartService.addProduct(orderDto, id);
		session.setAttribute("cart", orderDto);
		Integer countTotalQuantity = cartService.countTotal(orderDto.getListDetail());
		session.setAttribute("countTotalQuantity", countTotalQuantity);
		return "redirect:/";
	}
	
	@GetMapping("/updateProduct")
	public String doGetUpdateProduct(@RequestParam("id") Integer id,
			@RequestParam("quantity") Integer quantity,
			HttpSession session) {
		OrderDto orderDto = (OrderDto) session.getAttribute("cart");
		cartService.updateProduct(orderDto, id, quantity);
		session.setAttribute("cart", orderDto);
		Integer countTotalQuantity = cartService.countTotal(orderDto.getListDetail());
		session.setAttribute("countTotalQuantity", countTotalQuantity);
		return "redirect:/";
	}
	
	@GetMapping("/updateProductInCartPage")
	public String doGetUpdateProductCartPage(@RequestParam("id") Integer id,
			@RequestParam("quantity") Integer quantity,
			HttpSession session) {
		OrderDto orderDto = (OrderDto) session.getAttribute("cart");
		cartService.updateProduct(orderDto, id, quantity);
		session.setAttribute("cart", orderDto);
		Integer countTotalQuantity = cartService.countTotal(orderDto.getListDetail());
		session.setAttribute("countTotalQuantity", countTotalQuantity);
		return "redirect:/gio-hang";
	}
	
	@GetMapping("/checkOut")
	public String doGetCheckOut(HttpSession session) {
		AccountEntity user = (AccountEntity) session.getAttribute("user");
		OrderDto orderDto = (OrderDto) session.getAttribute("cart");
		orderDto.setCustomerId(user.getId());
		try {
			cartService.insertOrder(orderDto);
			session.removeAttribute("cart");
			session.setAttribute("countTotalQuantity", 0);
			session.setAttribute("totalPrice", 0);
		} catch (Exception ex) {
			ex.printStackTrace();
			return "redirect:/gio-hang";
		}
		return "redirect:/";
	}
}
