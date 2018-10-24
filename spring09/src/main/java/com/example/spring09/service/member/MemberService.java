package com.example.spring09.service.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.example.spring09.model.board.dto.BoardDTO;
import com.example.spring09.model.member.dto.MemberDTO;

public interface MemberService {
	
	public boolean loginCheck(
			MemberDTO dto, HttpSession session);
	public void logout(HttpSession session);
	public MemberDTO viewMember(String userid);
	public void insertMember(MemberDTO dto);
	public List<MemberDTO> memberList();
	public boolean mypwcheck(MemberDTO dto, HttpSession session);
	public void updateMember(MemberDTO dto);
	public void deleteMember(String userid);
	public boolean findId(MemberDTO dto, HttpSession session);
	public MemberDTO findMember(String email);
	
	
	
	
	
	

	
	
	
	

	


	
}
