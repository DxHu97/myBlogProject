package com.myBlog.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myBlog.dao.CommentDAO;
import com.myBlog.dao.UserDAO;
import com.myBlog.entity.Comments;
import com.myBlog.entity.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private CommentDAO commentDAO;

	@Override
	@Transactional
	public List<Comments> getComments() {
		return commentDAO.getComments();
	}

	@Override
	@Transactional
	public void saveComment(Comments theComment) {
		commentDAO.saveComment(theComment);

	}

	@Override
	@Transactional
	public Comments getComment(int theId) {
		return commentDAO.getComment(theId);
	}

	@Override
	@Transactional
	public void deleteComment(int theId) {

		commentDAO.deleteComment(theId);
	}

	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		userDAO.saveUser(theUser);

	}

	@Override
	@Transactional
	public User getUser(int theId) {
		return userDAO.getUser(theId);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {

		userDAO.deleteUser(theId);
	}

	@Override
	public User userLogin(int theId, String password, String username) {
		return userDAO.userLogin(theId, password, username);
	}

	@Override
	@Transactional
	public User validateUser(User theUser) {
		return userDAO.validateUser(theUser);
	}

}
