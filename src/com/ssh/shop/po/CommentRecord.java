package com.ssh.shop.po;

import java.util.Date;

public class CommentRecord implements java.io.Serializable {
	private int commentID; // 评论ID（数据库自增）
	private String comment; // 评论内容
	private User user; // 评论的用户
	private Book book; // 被评论的图书
	private Date commentDate; // 评论发布时间

	public int getCommentID() {
		return commentID;
	}

	public void setCommentID(int commentID) {
		this.commentID = commentID;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

}
