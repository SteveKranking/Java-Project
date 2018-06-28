package com.project.Bracket_Lottery.controllers;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.Bracket_Lottery.models.Team;
import com.project.Bracket_Lottery.models.User;
import com.project.Bracket_Lottery.repositories.TeamRepository;
import com.project.Bracket_Lottery.repositories.UserRepository;
import com.project.Bracket_Lottery.services.UserService;
import com.project.Bracket_Lottery.validators.UserValidator;

@Controller
public class UserController{
	private UserService _us;
	private UserValidator _uv;
	private TeamRepository _tr;

	public UserController(UserService _us, UserValidator _uv, TeamRepository _tr){
		this._us = _us;
		this._uv = _uv;
		this._tr = _tr;


	}
	
	@RequestMapping("/register")
	public String register(@ModelAttribute("user") User user, HttpSession s){
		s.setAttribute("id", null);
		return "register";
	}

	@RequestMapping("/home")
	public String home(){
		return "index";
	}

	@RequestMapping("/logout")
	public String logout(HttpSession s){
		s.setAttribute("id", null);
		return "redirect:/";
	}

	@PostMapping("/register")
	public String creater(@Valid @ModelAttribute("user") User user, BindingResult res, HttpSession session){
		_uv.validate(user, res);
		if(res.hasErrors()){
			return "register";
		}else{
			System.out.println("Your user is 0" + user);
			_us.create(user);
			session.setAttribute("id", user.getId());
			return "redirect:/dashboard";
		}
	}

	@PostMapping("/login")
	public String login(@RequestParam("email") String email, @RequestParam("password")String password, HttpSession session){
		User user = _us.findByEmail(email);
		if(user == null){
			return "redirect:/";
		}else{
			if( _us.isMatch(password, user.getPassword()) ){
				session.setAttribute("id", user.getId());
				return "redirect:/dashboard";

			}else{
				return "redirect:/";
			}
		}
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(HttpSession s, Model model) {
		User user = _us.findById((Long)s.getAttribute("id"));
		model.addAttribute("currentUser", user);

		return "dashboard";
	}

	@RequestMapping("/gamepage")
	public String gamepage(HttpSession s, Model model) {
		User user = _us.findById((Long)s.getAttribute("id"));
		model.addAttribute("currentUser", user);

		List<Team> allTeams = (List<Team>) _tr.findAll();
		model.addAttribute("allTeams", allTeams);
		System.out.println(allTeams);
	
		return "gamepage";
	}

}
