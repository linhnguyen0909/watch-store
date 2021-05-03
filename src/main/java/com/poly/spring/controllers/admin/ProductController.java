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
import com.poly.spring.service.ICategory;
import com.poly.spring.service.IProduct;

@Controller(value = "productControllerOfAdmin")
@RequestMapping("/quan-tri/san-pham")
public class ProductController {

	@Autowired
	private IProduct productService;
	
	@Autowired
	private ICategory categoryService;

	@Autowired
	ServletContext context;

	@RequestMapping(value = "",method = RequestMethod.GET)	
	public String index(ModelMap model, @RequestParam("page") int page, @RequestParam("limit") int limit) {
		model.put("page", page);
		model.put("limit", limit);
		Pageable pageable = PageRequest.of(page - 1, limit);
			model.put("totalPage", (int) Math.ceil((double) productService.getTotalItem() / limit));
			model.put("products", productService.findAllList(pageable));		
		return "admin/product";
	}
	
	@RequestMapping(value = "/chinh-sua", method = RequestMethod.GET)
	public String add(ModelMap model, @RequestParam(value = "id", required = false) String id) {
		if (id != null) {
			int idInt = Integer.parseInt(id);
			model.put("action", "Update");
			model.put("model", productService.findById(idInt));
		} else {
			model.put("model", new ProductEntity());
			model.put("action", "Insert");
		}
		model.put("categories", categoryService.findAll());
		return "admin/productEdit";
	}

	@RequestMapping(value = "/chinh-sua", method = RequestMethod.POST)
	public String add(@ModelAttribute("model") @Validated ProductEntity book,BindingResult er,MultipartFile multipartFile , ModelMap model) {
//			if (er.hasErrors()) {
//				model.put("model", book);
//				model.put("action", "Insert");
//				return "admin/productEdit";
//			}else {
				try {
					if (!multipartFile.isEmpty()) {
						String fileName = multipartFile.getOriginalFilename();						
						String absolutePath = context.getRealPath("/photo/");
	
						Path uploadPath = Paths.get(absolutePath);
						System.out.println(uploadPath);
						File file = new File(absolutePath, fileName);
						System.out.println(file);
						multipartFile.transferTo(file); 
						book.setImage(fileName);
					}
					System.out.println(book.getCategory().getId());
					productService.save(book);
					return "redirect:/quan-tri/san-pham?page=1&limit=5";
				} catch (Exception e) {
					e.printStackTrace();
				}
//			}
		return "redirect:/quan-tri/san-pham?page=1&limit=5";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id, ModelMap model) {
		productService.delete(id);
		return "redirect:/quan-tri/san-pham?page=1&limit=5";
	}
}
