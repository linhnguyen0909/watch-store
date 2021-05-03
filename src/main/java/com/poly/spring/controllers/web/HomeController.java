package com.poly.spring.controllers.web;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.poly.spring.dto.OrderDto;
import com.poly.spring.entities.AccountEntity;
import com.poly.spring.service.IAccount;
import com.poly.spring.service.ICartService;
import com.poly.spring.service.IProduct;

@Controller(value = "homeControllerOfWeb")
@RequestMapping("/")
public class HomeController {
	@Autowired
	private IProduct productService;

	@Autowired
	private IAccount accountService;
	
	@Autowired
	private ICartService cartService;

	@Autowired
	ServletContext context;

	@Autowired
	private JavaMailSender javaMailSender;

	@RequestMapping(method = RequestMethod.GET)
	public String index(ModelMap model, HttpSession session) {
//		model.put("user",userService.findAll());
		System.out.println(productService.findTop());
		model.put("productTops", productService.findTop());
		if (session.getAttribute("cart") == null) {
			session.setAttribute("countTotalQuantity", 0);
			session.setAttribute("cart", new OrderDto());
		} else {
			OrderDto orderDto = (OrderDto) session.getAttribute("cart");
			Integer countTotalQuantity = cartService.countTotal(orderDto.getListDetail());
			session.setAttribute("countTotalQuantity", countTotalQuantity);
		}
		return "web/home";
	}

	@RequestMapping(value = "dang-xuat", method = RequestMethod.GET)
	public String logout(HttpSession session, ModelMap model,
			@RequestParam(value = "error", required = false) String error) {
		session.removeAttribute("user");
		session.removeAttribute("cart");
		return "login";
	}

	@RequestMapping(value = { "dang-nhap" }, method = RequestMethod.GET)
	public String login(HttpSession session, ModelMap model,
			@RequestParam(value = "error", required = false) String error) {
		session.setAttribute("user", null);
		try {
			if (error.equals("true")) {
				model.put("error", "Tên đăng nhập hoặc mật khẩu không đúng !!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "login";
	}

	@RequestMapping(value = "dang-ky", method = RequestMethod.GET)
	public String signin(ModelMap model) {
		model.put("model", new AccountEntity());
		return "sigin";
	}

	@RequestMapping(value = "quen-mat-khau", method = RequestMethod.GET)
	public String forgotPassword(HttpSession session,ModelMap model,@RequestParam(value = "error", required = false) String error) {
		session.setAttribute("user", null);
		try {
			if (error.equals("true")) {
				model.put("error", "Email của bạn không tồn tại !!");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "forgotPassword";
	}

	@RequestMapping(value = "quen-mat-khau", method = RequestMethod.POST)
	public String forgotPassword(@RequestParam(value = "email") String email) {
		try {
			String newPass = generateString();
			AccountEntity account = accountService.findByEmail(email);
			if (account == null) {
				return "redirect:/quen-mat-khau?error=true";
			}
			account.setPassword(newPass);
			accountService.save(account);
			SimpleMailMessage msg = new SimpleMailMessage();
			msg.setTo(email);

			msg.setSubject("Testing from Spring Boot");
			msg.setText("Mật khẩu của bạn là:" + newPass);

			javaMailSender.send(msg);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return "forgotPassword";
	}

	public static String generateString() {
		return UUID.randomUUID().toString();
	}

	@RequestMapping(value = "dang-ky", method = RequestMethod.POST)
	public String add(@ModelAttribute("model") @Validated AccountEntity account, BindingResult er,
			MultipartFile multipartFile, ModelMap model) {
		if (er.hasErrors()) {
			model.put("model", account);
			return "sigin";
		} else {
			try {
				if (!multipartFile.isEmpty()) {
					String fileName = multipartFile.getOriginalFilename();
					String absolutePath = context.getRealPath("/photo/");

					Path uploadPath = Paths.get(absolutePath);
					System.out.println(uploadPath);
					File file = new File(absolutePath, fileName);
					System.out.println(file);
					multipartFile.transferTo(file);
					account.setImage(fileName);
				}
				accountService.save(account);
				return "redirect:/";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "redirect:/";
	}

	@RequestMapping(value = "dang-nhap", method = RequestMethod.POST)
	public String login(HttpSession session, ModelMap model, @RequestParam("username") String username,
			@RequestParam("password") String password) {

		if (username.equals("") || password.equals("")) {
			return "redirect:/dang-nhap?error=true";
		}

		System.out.println(password);

		AccountEntity entity = new AccountEntity();
		entity = accountService.login(username, password);
		session.setAttribute("user", entity);
		if (entity == null) {
			return "redirect:/dang-nhap?error=true";
		}
//
//		// for (RoleEntity role : entity.getRoles()) {
//		// System.out.println(role.getCode());
		if (entity.getRole() == 0) {
			return "redirect:/quan-tri/";
		} else if (entity.getRole() == 1) {
			if (session.getAttribute("cart") == null) {
				session.setAttribute("countTotalQuantity", 0);
				session.setAttribute("cart", new OrderDto());
			} else {
				OrderDto orderDto = (OrderDto) session.getAttribute("cart");
				Integer countTotalQuantity = cartService.countTotal(orderDto.getListDetail());
				session.setAttribute("countTotalQuantity", countTotalQuantity);
			}
			return "redirect:/";
		}
		return "redirect:/dang-nhap?error=true";
	}
}
