package com.javaweb.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import com.javaweb.model.NewsModel;

public class NewsMapper implements RowMapper<NewsModel> {
	@Override
	public NewsModel mapRow(ResultSet resultSet) {
		try {
			NewsModel news = new NewsModel();
			news.setId(resultSet.getLong("id"));
			news.setTitle(resultSet.getString("title"));
			news.setContent(resultSet.getString("content"));
			news.setCategoryId(resultSet.getLong("categoryid"));
			news.setThumbnail(resultSet.getString("thumbnail"));
			news.setDescription_seo(resultSet.getString("description_seo"));
			news.setCreatedDate(resultSet.getTimestamp("createdDate"));
			news.setCreatedBy(resultSet.getString("createdBy"));
			if (resultSet.getTimestamp("modifiedDate") != null) {
				news.setModifiedDate(resultSet.getTimestamp("modifiedDate"));
			}
			if (resultSet.getString("modifiedBy") != null) {
				news.setModifiedBy(resultSet.getString("modifiedBy"));
			}
			return news;
		} catch (SQLException e) {
			return null;
		}
	}
}
