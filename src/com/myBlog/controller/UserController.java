package com.myBlog.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myBlog.entity.Comments;
import com.myBlog.entity.User;
import com.myBlog.service.UserService;

@Controller
@RequestMapping("")
public class UserController {

	@Autowired
	private UserService userService;

	public String loggedInUser = "";
	public int loggedInID;

	@GetMapping("/home")
	public String home() {
		return "index";
	}

	@GetMapping("/signin")
	public String signin(Model theModel) {
		theModel.addAttribute("user", new User());
		return "signin";
	}

	@GetMapping("/hibernate")
	public String hibernate(Model theModel) {
		List<Comments> theComments = userService.getComments();

		theModel.addAttribute("comment", theComments);
		return "hibernate";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {

		// create model attribute to bind form data
		User theUser = new User();

		theModel.addAttribute("user", theUser);

		return "signup";
	}

	@PostMapping("/saveUser")
	public String saveUser(@ModelAttribute("user") User theUser) {
		userService.saveUser(theUser);
		return "redirect:/home";
	}

	@PostMapping("/saveComment")
	public String saveComment(@ModelAttribute("comment") Comments theComment) {
		userService.saveComment(theComment);
		/* theComment.setUser_id(loggedInID); */
		theComment.setUsername(loggedInUser);
		return "redirect:/hibernate";
	}

	@GetMapping("/showFormForAddComment")
	public String showFormForAddComment(Model theModel) {

		// create model attribute to bind form data
		Comments theComment = new Comments();

		theModel.addAttribute("comment", theComment);

		return "addComment";
	}

	/*
	 * @PostMapping("/saveCommentFromUser") public String
	 * saveCommentFromUser(@ModelAttribute("comment") Comments theComment) {
	 * userService.saveComment(theComment); theComment.setUser_id(loggedInID);
	 * theComment.setUsername(loggedInUser); return "redirect:/hibernate"; }
	 */

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("userId") int theId, Model theModel) {

		// get the customer from our service
		User theUser = userService.getUser(theId);

		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("user", theUser);

		// send over to our form
		return "signup";
	}

	@GetMapping("/showFormForUpdateComment")
	public String showFormForUpdateComment(@RequestParam("comment_id") int theId, Model theModel) {
		// get the comment from our service
		Comments theComment = userService.getComment(theId);
		System.out.println("got comment with ID " + theComment.getComment_id());
		// set comment as a model attribute to pre-populate the form
		theModel.addAttribute("comments", theComment);
		/* theModel.addAttribute("userId", loggedInID); */

		// send over to our form
		return "updateComment";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("userId") int theId) {
		// delete the comment
		userService.deleteUser(theId);

		return "redirect:/home";
	}

	@GetMapping("/deleteComment")
	public String deleteComment(@RequestParam("comment_id") int theId) {
		// delete the customer
		userService.deleteComment(theId);

		return "redirect:/hibernate";
	}

	@PostMapping("/validateUser")
	public String validateUser(@ModelAttribute("user") User theUser) {
		if (userService.validateUser(theUser) != null) {

			loggedInID = userService.validateUser(theUser).getId();
			loggedInUser = userService.validateUser(theUser).getUsername();
			System.out.println(loggedInID);

			return "redirect:/home";
		} else {
			System.out.println("unsuccessful");
			return "redirect:/signin";
		}
	}

//	@PostMapping("/fetch")
//	public String validateUser(@RequestParam("userId") int theId, @RequestParam String username, @RequestParam String password, HttpSession session, Model theModel) {
//		User user = userService.userLogin(theId, password, username);
//		if (user == null) {
//			theModel.addAttribute("loginError", "Incorrect credentials, please try again");
//			return "signin";
//		}
//		session.setAttribute("loggedInUser", user);
//		return "redirect:/home";
//	}
}
//getmapping you added new login helper , add attribute
//login helper class
//create a query in my DAO t ofetch
