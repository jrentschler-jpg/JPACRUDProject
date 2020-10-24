package com.skilldistillery.jpacrud.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpacrud.data.WineDAO;
import com.skilldistillery.jpacrud.entities.Wine;



@Controller
public class WineController {
	
	@Autowired
	private WineDAO wineDao;
	
	@RequestMapping(path = "/")
	public String index() {
		return "index";
	}
	
	@RequestMapping(path="getWine.do", method = RequestMethod.GET)
	public String showWine(Integer wid, Model model) {
		Wine wine = wineDao.findWineById(wid);
		model.addAttribute("wine", wine);
		return "show";
	}
		
	@RequestMapping(path="createWine.do", method = RequestMethod.POST)
	public ModelAndView createWine(Wine wine, RedirectAttributes ra) {
		Wine addWine = wineDao.createWine(wine);
		
		ModelAndView mv = new ModelAndView();
		ra.addFlashAttribute("wine", addWine);
		mv.setViewName("redirect:wineAdded.do");
		return mv;
		
	}
	@RequestMapping(path="wineAdded.do", method = RequestMethod.GET) 
	public ModelAndView created() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("show");
		return mv;
		
	}
	@RequestMapping(path = "index.do")
	public String backHome() {
		return "index";
	}
	
		
	
	

}
