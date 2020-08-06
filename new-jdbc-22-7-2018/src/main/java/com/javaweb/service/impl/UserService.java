package com.javaweb.service.impl;

import javax.inject.Inject;

import com.javaweb.dao.IUserDao;
import com.javaweb.model.UserModel;
import com.javaweb.service.IUserService;

public class UserService implements IUserService{
@Inject
private IUserDao userDao;
	@Override
	public UserModel finByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		
		return userDao.finByUserNameAndPasswordAndStatus(userName, password, status);
	}

}
