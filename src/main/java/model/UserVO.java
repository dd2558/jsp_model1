package model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO {
  private String userid;
  private String password;
  private String name;
  private String role;
}
