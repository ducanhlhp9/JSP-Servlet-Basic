package com.javaweb.dao.impl;

import java.util.List;

import com.javaweb.dao.IUserDao;
import com.javaweb.mapper.UserMapper;
import com.javaweb.model.UserModel;

public class UserDao extends AbstractDAO<UserModel> implements IUserDao {

	@Override
	public UserModel finByUserNameAndPasswordAndStatus(String userName, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM users AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.roleid");
		sql.append(" WHERE username =? AND password =? AND status = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), userName, password, status);
		return users.isEmpty() ? null : users.get(0);
	}

}
