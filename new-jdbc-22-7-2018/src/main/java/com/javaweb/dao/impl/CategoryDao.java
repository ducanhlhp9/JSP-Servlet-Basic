package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.ICategoryDao;
import com.javaweb.mapper.CategoryMapper;
import com.javaweb.model.CategoryModel;

public class CategoryDao extends AbstractDAO<CategoryModel> implements ICategoryDao {


	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM categories";
		return query(sql, new CategoryMapper());
	}

}
