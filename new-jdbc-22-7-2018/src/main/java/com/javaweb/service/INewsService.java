package com.javaweb.service;

import java.util.List;

import com.javaweb.model.NewsModel;

public interface INewsService {
	List<NewsModel> findByCateforyId(long categoryId);
	NewsModel save(NewsModel newsModel);
	NewsModel update(NewsModel updateNews);
	void delete(long[] ids);
	List<NewsModel> findAll();
}
