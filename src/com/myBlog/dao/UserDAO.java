package com.myBlog.dao;

import java.util.List;

import com.myBlog.entity.User;

public interface UserDAO {

	public List<User> getUsers();

	public void saveUser(User theUser);

	public User getUser(int theId);

	public void deleteUser(int theId);

	public User userLogin(int theId, String password, String username);

	public User validateUser(User theUser);
}
