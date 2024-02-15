package srv;

import java.util.ArrayList;
import java.util.List;

import dao.BoardMapper;
import model.BoardDTO;
import model.BoardVO;

public class BoardServiceImpl implements BoardService{
   private BoardMapper boardDao;
   
   public BoardServiceImpl(BoardMapper boardDao) {
      this.boardDao = boardDao;
   }
    
   @Override
   public List<BoardDTO> findAll() {
      List<BoardVO> daoList = boardDao.findAll();
      List<BoardDTO> list = null;
      
      if(daoList!=null) {
         list = new ArrayList<BoardDTO>();
         
         for(BoardVO vo : boardDao.findAll()) {
         BoardDTO dto = new BoardDTO();
            dto.setCnt(vo.getCnt());
            dto.setContent(vo.getContent());
            dto.setNickname(vo.getNickname());
            dto.setRegdate(vo.getRegdate());
            dto.setSeq(vo.getSeq());
            dto.setTitle(vo.getTitle());
            dto.setUserid(vo.getUserid());
            
            list.add(dto);
         }//for
      }//if
      return list;
   }

   @Override
   public int save(BoardDTO dto) {
      BoardVO vo = new BoardVO();
      vo.setUserid(dto.getUserid());
      vo.setTitle(dto.getTitle());
      vo.setContent(dto.getContent());
      vo.setNickname(dto.getNickname());
      
      return boardDao.save(vo);
   }


  @Override
  public BoardDTO getOne(int seq) {
    
    increaseCnt(seq);
    
    BoardVO vo = boardDao.getOne(seq);
    
    BoardDTO dto = new BoardDTO();
    dto.setCnt(vo.getCnt());
    dto.setContent(vo.getContent());
    dto.setNickname(vo.getNickname());
    dto.setRegdate(vo.getRegdate());
    dto.setSeq(vo.getSeq());
    dto.setTitle(vo.getTitle());
    dto.setUserid(vo.getUserid());
    
    return dto;
  }

  @Override
  public int increaseCnt(int seq) {

    int result = boardDao.increaseCnt(seq);
    
    
    
    
    return result;
  }

  @Override
  public int update(BoardDTO dto) {
    BoardVO vo = new BoardVO();
    vo.setSeq(dto.getSeq());
    vo.setUserid(dto.getUserid());
    vo.setTitle(dto.getTitle());
    vo.setContent(dto.getContent());
    vo.setNickname(dto.getNickname());
    
    return boardDao.update(vo);
  }

  @Override
  public void delete(int seq) {
    boardDao.delete(seq);
  }


}