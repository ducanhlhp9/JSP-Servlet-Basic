package com.javaweb.dao;

import com.javaweb.model.UserModel;

public interface IUserDao extends GenericDAO<UserModel>{
	UserModel finByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
}
