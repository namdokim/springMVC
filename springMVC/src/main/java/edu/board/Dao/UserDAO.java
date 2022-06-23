package edu.board.Dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.board.vo.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	
	public int insertuser(UserVO vo) {
		
		int result = sqlSession.insert("edu.board.mapper.userMapper.insertuser", vo );
		
		return result;
	}
	
	public UserVO selectlogin(UserVO vo) {
		
		return sqlSession.selectOne("edu.board.mapper.userMapper.selectlogin",vo );
	}

}
