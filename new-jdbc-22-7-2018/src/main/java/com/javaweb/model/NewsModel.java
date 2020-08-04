package com.javaweb.model;

public class NewsModel extends AbstractModel<NewsModel>{
private String title;
private String thumbnail;
private String description_seo;
private String content;
private Long categoryId;
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getThumbnail() {
	return thumbnail;
}
public void setThumbnail(String thumbnail) {
	this.thumbnail = thumbnail;
}
public String getDescription_seo() {
	return description_seo;
}
public void setDescription_seo(String description_seo) {
	this.description_seo = description_seo;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public Long getCategoryId() {
	return categoryId;
}
public void setCategoryId(Long categoryId) {
	this.categoryId = categoryId;
}



}
