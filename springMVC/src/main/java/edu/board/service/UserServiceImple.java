package edu.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.board.Dao.UserDAO;
import edu.board.vo.UserVO;

@Service
public class UserServiceImple implements UserService {
	
	@Autowired
	UserDAO userDao;

	@Override
	public int insertuser(UserVO vo) {
		int result = userDao.insertuser(vo);
		return result;
	}

	@Override
	public UserVO selectlogin(UserVO vo) {
		
		return userDao.selectlogin(vo);
	}
	
	
	
}
