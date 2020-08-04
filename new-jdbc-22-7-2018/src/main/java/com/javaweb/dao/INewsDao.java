package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.NewsModel;

public interface INewsDao extends GenericDAO<NewsModel>{
	NewsModel findOne(long id);
	List<NewsModel> findByCategoryId(long categoryId);
	long save(NewsModel newsModel);
	void update(NewsModel updateNews);
	void delete(long id);
	List<NewsModel> findAll();
}
