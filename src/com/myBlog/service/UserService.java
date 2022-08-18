package com.myBlog.service;

import java.util.List;

import com.myBlog.entity.Comments;
import com.myBlog.entity.User;

public interface UserService {

	public List<User> getUsers();

	public void saveUser(User theCustomer);

	public User getUser(int theId);

	public void deleteUser(int theId);

	public List<Comments> getComments();

	public void saveComment(Comments theComment);

	public Comments getComment(int theId);

	public void deleteComment(int theId);

	public User userLogin(int theId, String password, String username);

	public User validateUser(User theUser);

}
