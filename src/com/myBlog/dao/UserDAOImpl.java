package com.myBlog.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myBlog.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<User> getUsers() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<User> theQuery = currentSession.createQuery("from User ORDER BY username", User.class);

		// execute query and get result list
		List<User> users = theQuery.getResultList();

		// return the results
		return users;
	}

	@Override
	public void saveUser(User theUser) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theUser);
	}

	@Override
	public User getUser(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		User theUser = currentSession.get(User.class, theId);

		return theUser;
	}

	@Override
	public void deleteUser(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query theQuery = currentSession.createQuery("delete from User where id=:UserId");
		theQuery.setParameter("UserId", theId);

		theQuery.executeUpdate();
	}

	@Override
	public User userLogin(int theId, String password, String username) {
		User user = this.getUser(theId);
		if (user != null && user.getPassword().equals(password) && user.getUsername().equals(username)) {
			return user;
		}
		return null;
	}

	@Override
	public User validateUser(User theUser) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		System.out.println("success");
		// now retrieve/read from database using the primary key
		Query theQuery = currentSession.createQuery("from User where username=:username");
		theQuery.setParameter("username", theUser.getUsername());
		// theQuery.setParameter("UserPassword", theUser.getPassword());
		User validation = (User) theQuery.getSingleResult();
		System.out.println("User object" + validation);

		if (validation != null) {
			return validation;
		} else {
			return null;
		}
	}
}
