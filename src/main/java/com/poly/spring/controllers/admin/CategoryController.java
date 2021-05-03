package com.poly.spring.controllers.admin;

import javax.servlet.http.HttpServletRequest;

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

import com.poly.spring.entities.CategoryEntity;
import com.poly.spring.service.ICategory;


@Controller
@RequestMapping("/quan-tri/danh-muc")
public class CategoryController {

	@Autowired
	private ICategory categoryService;

	@RequestMapping(method = RequestMethod.GET)	
	public String index(ModelMap model,@RequestParam("page") int page, @RequestParam("limit") int limit) {
		model.put("page", page);
		model.put("limit", limit);
		int pageTam = page - 1;
		Pageable pageable = PageRequest.of(pageTam, limit);
		model.put("totalPage", (int) Math.ceil((double) categoryService.getTotalItem() / limit));
		model.put("categories", categoryService.findAllList(pageable));
		return "admin/category";
	}
	
	@RequestMapping(value = "/chinh-sua", method = RequestMethod.GET)
	public String add(ModelMap model, @RequestParam(value = "id", required = false) String id) {
		if (id != null) {
			int idInt = Integer.parseInt(id);
			model.put("action", "Update");
			model.put("model", categoryService.findById(idInt));
		} else {
			model.put("model", new CategoryEntity());
			model.put("action", "Insert");
		}
		return "admin/categoryEdit";
	}

	@RequestMapping(value = "/chinh-sua", method = RequestMethod.POST)
	public String add(@ModelAttribute("model")@Validated CategoryEntity cate,BindingResult er, ModelMap model, HttpServletRequest request) {
		if (er.hasErrors()) {
			model.put("model", cate);
			model.put("action", "Insert");
			return "admin/categoryEdit";
		}else {
			categoryService.save(cate);		
		}
		return "redirect:/quan-tri/danh-muc?page=1&limit=5";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id, ModelMap model) {
		categoryService.delete(id);
		return "redirect:/quan-tri/danh-muc?page=1&limit=5";
	}
}
