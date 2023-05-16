package com.it;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SignupController {

	// If one bean wanted to use other bean
	@Autowired
	private SignupDaoService signupDaoService;

	@GetMapping("/signups")
	public String showSignups(HttpServletRequest req) {
		List<SignupDTO> dtos = signupDaoService.findAll();
		// Adding my data inside request scope
		req.setAttribute("signups", dtos);
		return "showSignup";
	}

	@GetMapping({ "/csignup", "/" })
	public String showSignup() {
		return "signup";
	}

	@GetMapping("dsignup")
	public String deleteSignup(HttpServletRequest req) {
		String pids = req.getParameter("pid");
		int pid = Integer.parseInt(pids);
		signupDaoService.deleteByPid(pid);
		List<SignupDTO> dtos = signupDaoService.findAll();
		// Adding my data inside request scope
		req.setAttribute("signups", dtos);
		return "showSignup";
	}
	
	@GetMapping("sortData")
	public String sortSignup(HttpServletRequest req) {
		 String sort=req.getParameter("sort");
		  String orderBy=req.getParameter("orderBy");
   	 //FETCHING REMAINING DATA
		 List<SignupDTO> dtos=signupDaoService.findAll();
		 if("email".equalsIgnoreCase(sort) && "asc".equalsIgnoreCase(orderBy)) {
			 //This is an example of anonymous class  - class with out name
			 Collections.sort(dtos, new Comparator<SignupDTO>() {
				@Override
				public int compare(SignupDTO o1, SignupDTO o2) {
					//Ascending order
					return o1.getEmail().compareTo(o2.getEmail());
				}
			});
		 }else if("email".equalsIgnoreCase(sort) && "desc".equalsIgnoreCase(orderBy)) {
			 //This is an example of anonymous class  - class with out name
			 Collections.sort(dtos, new Comparator<SignupDTO>() {
				@Override
				public int compare(SignupDTO o1, SignupDTO o2) {
					//Ascending order
					return o2.getEmail().compareTo(o1.getEmail());
				}
			});
		 }else if("username".equalsIgnoreCase(sort)) {
			 //This is an example of anonymous class  - class with out name
			 Collections.sort(dtos, new Comparator<SignupDTO>() {
				@Override
				public int compare(SignupDTO o1, SignupDTO o2) {
					//Ascending order
					return o1.getUsername().compareTo(o2.getUsername());
				}
			});
		 }
		 //Adding my data inside request scope
		 req.setAttribute("signups", dtos);
		//I have to go to next JSP
		 return "showSignup";
	}
	

}
