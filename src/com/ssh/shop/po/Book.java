package com.ssh.shop.po;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Book implements java.io.Serializable {
	private int bookID; //图书编号
	private String isbn; //图书ISBN	
	private String bookName; //图书名称
	private String authorName; //作者
	private float price; //价格
	private String publisher; //出版商
	private int likeNum; //点赞数
	private String description; //描述
	private String bookPath; //路径
	private String cover; //封面
	private boolean recommendFlag; //推荐标志
	private Date publishDate; //上架时间
	private BookVariety bookVariety;//图书类别
	private Set<OrderDetail> orderDetail = new HashSet<OrderDetail>(0); //订单明细
	private Set<ShoppingCartDetail> shoppingCartDetail = new HashSet<ShoppingCartDetail>(0); //购物车明细
	private Set<CommentRecord> commentRecord = new HashSet<CommentRecord>(0); //评论
	private Set<LikeRecord> likeRecord = new HashSet<LikeRecord>(0); //拥有的点赞集合
	
	public Set<LikeRecord> getLikeRecord() {
		return likeRecord;
	}
	public void setLikeRecord(Set<LikeRecord> likeRecord) {
		this.likeRecord = likeRecord;
	}
	public int getBookID() {
		return bookID;
	}
	public void setBookID(int bookID) {
		this.bookID = bookID;
	}
	
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public int getLikeNum() {
		return likeNum;
	}
	public void setLikeNum(int likeNum) {
		this.likeNum = likeNum;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBookPath() {
		return bookPath;
	}
	public void setBookPath(String bookPath) {
		this.bookPath = bookPath;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}
	public boolean isRecommendFlag() {
		return recommendFlag;
	}
	public void setRecommendFlag(boolean recommendFlag) {
		this.recommendFlag = recommendFlag;
	}
	public Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Date publishDate) {
		this.publishDate = publishDate;
	}
	public BookVariety getBookVariety() {
		return bookVariety;
	}
	public void setBookVariety(BookVariety bookVariety) {
		this.bookVariety = bookVariety;
	}
	public Set<OrderDetail> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(Set<OrderDetail> orderDetail) {
		this.orderDetail = orderDetail;
	}
	public Set<ShoppingCartDetail> getShoppingCartDetail() {
		return shoppingCartDetail;
	}
	public void setShoppingCartDetail(Set<ShoppingCartDetail> shoppingCartDetail) {
		this.shoppingCartDetail = shoppingCartDetail;
	}
	public Set<CommentRecord> getCommentRecord() {
		return commentRecord;
	}
	public void setCommentRecord(Set<CommentRecord> commentRecord) {
		this.commentRecord = commentRecord;
	}
	
			
}
