package com.javaweb.dao;

import java.util.List;

import com.javaweb.model.CategoryModel;


public interface ICategoryDao extends GenericDAO<CategoryModel>{
	List<CategoryModel> findAll();
}
