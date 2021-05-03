package com.poly.spring.controllers.admin;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

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

import com.poly.spring.entities.AccountEntity;
import com.poly.spring.service.IAccount;

@Controller(value = "accountControllerOfAdmin")
@RequestMapping("/quan-tri/nguoi-dung")
public class AccountController {

	@Autowired
	private IAccount accountService;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "",method = RequestMethod.GET)	
	public String index(ModelMap model, @RequestParam("page") int page, @RequestParam("limit") int limit) {
		model.put("page", page);
		model.put("limit", limit);
		Pageable pageable = PageRequest.of(page, limit);
			model.put("totalPage", (int) Math.ceil((double) accountService.getTotalItem() / limit));
			model.put("accounts", accountService.findAllList(pageable));		
		return "admin/account";
	}
	
	@RequestMapping(value = "/chinh-sua", method = RequestMethod.GET)
	public String add(ModelMap model, @RequestParam(value = "id", required = false) String id) {
		if (id != null) {
			int idInt = Integer.parseInt(id);
			model.put("action", "Update");
			model.put("model", accountService.findById(idInt));
		} else {
			model.put("model", new AccountEntity());
			model.put("action", "Insert");
		}
		return "admin/accountEdit";
	}

	@RequestMapping(value = "/chinh-sua", method = RequestMethod.POST)
	public String add(@ModelAttribute("model") @Validated AccountEntity account,BindingResult er,MultipartFile multipartFile , ModelMap model) {
			if (er.hasErrors()) {
				model.put("model", account);
				model.put("action", "Insert");
				return "admin/accountEdit";
			}else {
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
					return "redirect:/quan-tri/nguoi-dung?page=1&limit=5";
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		return "redirect:/quan-tri/nguoi-dung?page=1&limit=5";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id, ModelMap model) {
		accountService.delete(id);
		return "redirect:/quan-tri/san-pham?page=1&limit=5";
	}
}
