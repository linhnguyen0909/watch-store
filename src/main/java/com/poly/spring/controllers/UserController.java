//package com.poly.spring.controllers;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//
//import com.poly.spring.entities.User;
//import com.poly.spring.service.UserService;
//
//@Controller
//@RequestMapping("user")
//public class UserController {
//	//Spring Boot tự inject (tiêm) một instance của userservice vào thuộc tính này khi user được tạo ra
//	//Khi tính năng Autowired được bật, tự động kích hoạt có thể được sử dụng trên các thuộc tính, setters và constructor
//	@Autowired
//	private UserService userService;
//	
//	// hiển thị dữ liệu dùng method get
//	@RequestMapping(method = RequestMethod.GET)	
//	public String index(ModelMap model) {
//		// lưu trữ các thuộc tính trong các lệnh gọi phương thức và chuỗi.
////		model.put("user",userService.findAll());
//		return "user/index";
//	}
//	
//	
//	@RequestMapping(value = "add", method = RequestMethod.GET)
//	public String add(ModelMap model) 
//	{
//		model.addAttribute("user", new User());
//		return "user/add";
//	}
//	
//	@RequestMapping(value = "add", method = RequestMethod.POST)
//	public String add(@ModelAttribute("user") User user, ModelMap model) 
//	{
//		userService.insert(user);
//		return "redirect:/user";
//	}
//	
//	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
//	public String delete(@PathVariable("id") int id, ModelMap model) 
//	{
//		userService.deleteById(id);
//		return index(model);
//	}
//	
//	@RequestMapping(value = "edit/{id}", method = RequestMethod.GET)
//	public String edit(@PathVariable("id") int id, ModelMap model ) 
//	{
//		model.put("user", userService.find(id));
//		return "user/edit";
//	}
//	
//	@RequestMapping(value = "edit", method = RequestMethod.POST)
//	public String edit(@ModelAttribute("user") User user)  {
//		userService.update(user);
//		return "redirect:/user";
//	}
//}
