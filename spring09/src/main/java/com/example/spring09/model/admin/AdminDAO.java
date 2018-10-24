package com.example.spring09.model.admin;

import com.example.spring09.model.member.dto.MemberDTO;

public interface AdminDAO {
	public String loginCheck(MemberDTO dto);

}
