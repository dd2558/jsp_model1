package model;

import java.io.Serializable;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

/*
 * java.util.date - 날짜시간
 * java.sql.date - 날짜만
 */

public class BoardVO implements Serializable {
  /**
   * 
   */
  private static final long serialVersionUID = 1L;
  private int seq;
  private String title;
  private String nickname;
  private String content;
  private Date regdate;
  private int cnt;
  private String userid;
}
