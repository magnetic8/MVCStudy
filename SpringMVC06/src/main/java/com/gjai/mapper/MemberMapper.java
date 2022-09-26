package com.gjai.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.gjai.entity.MemberVO;

@Mapper
public interface MemberMapper {
	
	
	@Select("select * from smember where id = #{id}")
	public MemberVO idCheck(String id);

	
	
	
	
	
}
