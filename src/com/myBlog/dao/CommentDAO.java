package com.myBlog.dao;

import java.util.List;

import com.myBlog.entity.Comments;

public interface CommentDAO {

	public List<Comments> getComments();
	public void saveComment(Comments theComment);
	public Comments getComment(int theId);
	public void deleteComment(int theId);
}
