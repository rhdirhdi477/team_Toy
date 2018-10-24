package com.example.spring09.model.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring09.model.board.dto.BoardDTO;
import com.example.spring09.model.member.dto.MemberDTO;
import com.example.spring09.model.member.dto.MemberDTO;

@Repository // Spring에서 관리하는 dao bean으로 설정
public class MemberDAOImpl implements MemberDAO {

	@Inject // mybatis 실행을 위한 SqlSession 객체 주입
	SqlSession sqlSession;

	@Override
	public boolean loginCheck(MemberDTO dto) {
		String name = sqlSession.selectOne("member.login_check", dto);
		// 조건식 ? true일때의 값 : false일 때의 값
		return (name == null) ? false : true;
	}
	
	@Override
	public MemberDTO viewMember(String userid) {
		return sqlSession.selectOne("member.viewMember", userid);
	}
	@Override
	public MemberDTO findMember(String email) {
		return sqlSession.selectOne("member.findMember", email);
	}


	@Override
	public boolean findId(MemberDTO dto) {
		String email = sqlSession.selectOne("member.findId", dto);
		// 조건식 ? true일때의 값 : false일 때의 값
		return (email == null) ? false : true;
	}
	@Override
	public void insertMember(MemberDTO dto) {
		sqlSession.insert("member.insertMember", dto);
	}
	@Override
	public List<MemberDTO> memberList() {
		return sqlSession.selectList("member.memberList");
		
	}
	@Override
	public boolean mypwcheck(MemberDTO dto) {
		String name = sqlSession.selectOne("member.mypwcheck", dto);
		// 조건식 ? true일때의 값 : false일 때의 값
		return (name == null) ? false : true;
	}
	@Override
	public void updateMember(MemberDTO dto) {
		sqlSession.update("member.updateMember", dto);
	}
	@Override
	public void deleteMember(String userid) {
		sqlSession.delete("member.deleteMember", userid);
	}
}
