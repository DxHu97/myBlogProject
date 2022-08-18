package com.myBlog.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myBlog.entity.Comments;

@Repository
public class CommentDAOImpl implements CommentDAO {

	// need to inject the session factory
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Comments> getComments() {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// create a query
		Query<Comments> theQuery = currentSession.createQuery("from Comments ORDER BY comment_id", Comments.class);

		// execute query and get result list
		List<Comments> Comments = theQuery.getResultList();

		// return the results
		return Comments;
	}

	@Override
	public void saveComment(Comments theComment) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theComment);
	}

	@Override
	public Comments getComment(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// now retrieve/read from database using the primary key
		Comments theComment = currentSession.get(Comments.class, theId);

		return theComment;
	}

	@Override
	public void deleteComment(int theId) {

		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();

		// delete object with primary key
		Query theQuery = currentSession.createQuery("delete from Comments where comment_id=:comment_id");
		theQuery.setParameter("comment_id", theId);

		theQuery.executeUpdate();
	}

}
