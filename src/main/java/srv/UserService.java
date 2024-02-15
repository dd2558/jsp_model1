package srv;

import model.UserVO;

public interface UserService {
  UserVO getOne(String userid);
}
