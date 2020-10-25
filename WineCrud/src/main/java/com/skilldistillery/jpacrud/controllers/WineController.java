package com.skilldistillery.jpacrud.controllers;

import java.util.List;

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
	@RequestMapping(path="deletedWine.do", method = RequestMethod.GET)
	public ModelAndView showDeletedWine(Integer id) {
		wineDao.deleteWine(id);
		ModelAndView mv = new ModelAndView();
//		ra.addFlashAttribute("wine", deleteThisWine);
		mv.setViewName("deleteWine");
		return mv;
	}
	
	@RequestMapping(path="updatedWine.do", method = RequestMethod.POST)
	public ModelAndView createUpdatedWine(Integer id, Wine wine) {
		ModelAndView mv = new ModelAndView();
		Wine updatedWine = wineDao.findWineById(id);
		mv.addObject("wine", updatedWine);
		mv.setViewName("redirect:updateThisWineNow.do");
		return mv;
	}
	@RequestMapping(path="updateThisWineNow.do", method = RequestMethod.POST) 
	public ModelAndView update(Integer id) {
		System.out.println("This is the redirect controller.");
		ModelAndView mv = new ModelAndView();
		mv.addObject("wine", wineDao.findWineById(id));
		mv.setViewName("updateWine");
		return mv;
		
	}
	@RequestMapping(path="Update.do", method = RequestMethod.POST) 
	public ModelAndView updateConfirmation(Wine wine) {
		ModelAndView mv = new ModelAndView();
		wineDao.updateWine(wine);
		mv.addObject("wine", wine);
		mv.setViewName("updatedWinePage");
		return mv;
		
	}
	@RequestMapping(path="wineList.do", method = RequestMethod.GET)
	public String listedWines(Model model) {
		List<Wine> listOfWines = wineDao.findAllWine();
		model.addAttribute("wine", listOfWines);
		return "listOfWines";
	}
	@RequestMapping(path="findWineName.do", method = RequestMethod.GET)
	public String findWineNames(String labelName, Model model) {
		List<Wine> findWinesByName = wineDao.findWineByName(labelName);
		model.addAttribute("wine", findWinesByName);
		return "listOfWines";
	}

	@RequestMapping(path = "index.do")
	public String backHome() {
		return "index";
	}
	
		
	
	

}
