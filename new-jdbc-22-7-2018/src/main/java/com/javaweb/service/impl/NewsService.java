package com.javaweb.service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import com.javaweb.dao.INewsDao;
import com.javaweb.model.NewsModel;
import com.javaweb.service.INewsService;

public class NewsService implements INewsService{
	@Inject
	private INewsDao newsDao;
	
	
	@Override
	public List<NewsModel> findByCateforyId(long categoryId) {
		
		return newsDao.findByCategoryId(categoryId);
	}

	@Override
	public NewsModel save(NewsModel newsModel) {
		newsModel.setCreatedDate(new Timestamp(System.currentTimeMillis()));
		newsModel.setCreatedBy("");
		long newsId = newsDao.save(newsModel);
		return newsDao.findOne(newsId);
	}

	@Override
	public NewsModel update(NewsModel updateNews) {
		NewsModel oldNews = newsDao.findOne(updateNews.getId());
		updateNews.setCreatedDate(oldNews.getCreatedDate());
		updateNews.setCreatedBy(oldNews.getCreatedBy());
		updateNews.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		updateNews.setModifiedBy("");
		newsDao.update(updateNews);
		return newsDao.findOne(updateNews.getId());
	}

	@Override
	public void delete(long[] ids) {
		for(long id: ids) {
			newsDao.delete(id);
		}
		
	}

	@Override
	public List<NewsModel> findAll() {
		
		return newsDao.findAll();
	}

}
