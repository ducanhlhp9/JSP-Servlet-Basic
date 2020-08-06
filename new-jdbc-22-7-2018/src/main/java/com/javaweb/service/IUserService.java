package com.javaweb.service;

import com.javaweb.model.UserModel;

public interface IUserService {
	UserModel finByUserNameAndPasswordAndStatus(String userName, String password, Integer status);
}
