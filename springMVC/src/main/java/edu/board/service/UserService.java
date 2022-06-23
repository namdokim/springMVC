package edu.board.service;

import edu.board.vo.UserVO;

public interface UserService {
	int insertuser(UserVO vo);
	UserVO selectlogin(UserVO vo); 
}
