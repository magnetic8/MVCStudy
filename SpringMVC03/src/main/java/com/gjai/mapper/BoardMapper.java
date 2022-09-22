package com.gjai.mapper;
import java.util.List;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import com.gjai.entity.BoardVO;
import com.gjai.entity.Member;
public interface BoardMapper {
	
	public List<BoardVO> getList();
	
	public void insert(BoardVO vo);
	
	@Select("select * from reboard where idx=#{idx}")
	public BoardVO read(int idx);
	
	@Delete("update reboard set boardAvailable=0 where idx=#{idx}")
	public void delete(int idx);
	
	public void update(BoardVO vo);
	public Member getLogin(Member vo);

	public void replyInsert(BoardVO vo);

	public void replyUpdate(BoardVO parent);
}