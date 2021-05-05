package com.wzeta21.mvc.base.controller;

import javax.validation.Valid;

import com.wzeta21.mvc.base.dto.FormDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
    public String displayHome(Model model) {
		return "/home";
	}
	
	@ModelAttribute
	public FormDTO createFormBean() {
		return new FormDTO();
	}
	
	@RequestMapping(value = "/", method=RequestMethod.POST)
	public String submitMessage(@Valid FormDTO formDTO, BindingResult result,
								SessionStatus sessionStatus,
								RedirectAttributes redirectAttrs) {
		
		if (result.hasErrors()) {
			return "/home";
		}
		String message = formDTO.toString();
		sessionStatus.setComplete();
		redirectAttrs.addFlashAttribute("message", message);
		
		return "redirect:/";
	}
}
