package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.INewsDao;
import com.javaweb.mapper.NewsMapper;
import com.javaweb.model.NewsModel;

public class NewsDao extends AbstractDAO<NewsModel> implements INewsDao {

	@Override
	public NewsModel findOne(long id) {
		String sql = "SELECT * FROM news WHERE id =?";
		List<NewsModel> news = query(sql, new NewsMapper(), id);
		return news.isEmpty() ? null : news.get(0);
	}

	@Override
	public List<NewsModel> findByCategoryId(long categoryId) {
		String sql = "SELECT * FROM news WHERE categoryid=?;";
		return query(sql, new NewsMapper(), categoryId);
	}

	@Override
	public long save(NewsModel newsModel) {
		StringBuilder sql = new StringBuilder("INSERT INTO news(titlle, thumbnail, ");
		sql.append("description_seo, content, categoryid, createdDate, createdBy, modifiedDate, modifiedBy) ");
		sql.append("VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)");
		return insert(sql.toString(), newsModel.getTitle(), newsModel.getThumbnail(), newsModel.getDescription_seo(),
				newsModel.getContent(), newsModel.getCategoryId(), newsModel.getCreatedDate(),
				newsModel.getCreatedBy(), newsModel.getModifiedDate(), newsModel.getModifiedBy());
	}

	@Override
	public void update(NewsModel updateNews) {
		StringBuilder sql = new StringBuilder("UPDATE news SET title =?, thumbnail=?,");
		sql.append("description_seo =?, content =?, categoryid =?,");
		sql.append("createdDate=?, createdBy =?, modifiedDate =?, modifiedBy = ? WHERE id =?");
		update(sql.toString(), updateNews.getTitle(), updateNews.getThumbnail(), updateNews.getDescription_seo(),
				updateNews.getContent(), updateNews.getCategoryId(), updateNews.getCreatedDate(),
				updateNews.getCreatedBy(), updateNews.getModifiedDate(), updateNews.getModifiedBy(),
				updateNews.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FORM news WHERE id =?";
		update(sql, id);

	}

	@Override
	public List<NewsModel> findAll() {
		String sql = "SELECT * FROM news";
		return query(sql, new NewsMapper());
	}

}
