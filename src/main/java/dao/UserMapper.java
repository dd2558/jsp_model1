package dao;

import model.UserVO;

public interface UserMapper {
  UserVO getOne(String userid);
}
