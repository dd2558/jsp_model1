package srv;

import java.util.Map;

import dao.UserMapper;
import model.UserDTO;
import model.UserVO;

public class UserServiceImpl implements UserService {

  // userDao 객체를 이용해서 작업
  private UserMapper userDao;

  public UserServiceImpl(UserMapper userDao) {
    this.userDao = userDao;
  }

  @Override
  public UserDTO getOne(Map<String, String> loginInfo) {

    System.out.println(loginInfo.get("userid"));
    System.out.println(loginInfo.get("password"));

    UserVO vo = userDao.getOne(loginInfo);

    UserDTO dto = null;

    // 모델매퍼 라이브러리를 이용해 자동으로 변환
    if (vo != null) {
      // vo를 dto로 변환해서 리턴
      dto = new UserDTO();
      dto.setName(vo.getName());
      dto.setPassword(vo.getPassword());
      dto.setUserid(vo.getUserid());
      dto.setRole(vo.getRole());
    }

    return dto;
  }

}