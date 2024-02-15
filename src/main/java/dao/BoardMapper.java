package dao;

import java.util.List;

import model.BoardVO;

public interface BoardMapper {
  List<BoardVO> findAll();
  
  int save(BoardVO vo);//insert,update = int
  BoardVO getOne(int seq);
  
  int increaseCnt(int seq);
  
  int update(BoardVO vo);
  
  void delete(int seq);
}
