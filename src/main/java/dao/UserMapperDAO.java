package dao;

import org.apache.ibatis.session.SqlSession;

import model.UserVO;

public class UserMapperDAO implements UserMapper {

   SqlSession sqlSession;
  
   public UserMapperDAO(SqlSession sqlSession) {
     this.sqlSession = sqlSession;
   }
   
   public UserMapper mp() {
     return sqlSession.getMapper(UserMapper.class);
   }
   
  @Override
  public UserVO getOne(String userid) {
    
    
    return mp().getOne(userid) ;
  }

}
