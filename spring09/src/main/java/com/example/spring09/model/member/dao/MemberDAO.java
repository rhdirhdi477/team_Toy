package com.example.spring09.model.member.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.example.spring09.model.member.dto.MemberDTO;

public interface MemberDAO {
	public boolean loginCheck(MemberDTO dto);
	public MemberDTO viewMember(String userid);
	public void insertMember(MemberDTO dto);
	public List<MemberDTO> memberList();
	public boolean mypwcheck(MemberDTO dto);
	public void updateMember(MemberDTO dto);
	public void deleteMember(String userid);
	public boolean findId(MemberDTO dto);
	public MemberDTO findMember(String email);

	
	
	
	
}
