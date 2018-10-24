package com.example.spring09.service.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.example.spring09.model.member.dao.MemberDAO;
import com.example.spring09.model.member.dto.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	MemberDAO memberDao;

	@Override
	public boolean loginCheck(MemberDTO dto, HttpSession session) {
		boolean result = memberDao.loginCheck(dto);
		if (result) { // 로그인 성공
			// 세션변수에 값 저장
			MemberDTO dto2 = viewMember(dto.getUserid());
			// setAttribute(변수명,값)
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", dto2.getName());
			session.setAttribute("email", dto2.getEmail());
			session.setAttribute("ph", dto2.getPh());
			session.setAttribute("addrdetail", dto2.getAddrdetail());
			session.setAttribute("addrdetail2", dto2.getAddrdetail2());
			session.setAttribute("join_date", dto2.getJoin_date());
			System.out.println(session.getAttribute("userid"));
			System.out.println(session.getAttribute("name"));
		}
		return result;
	}
	
	@Override
	public boolean mypwcheck(MemberDTO dto, HttpSession session) {
		boolean result = memberDao.mypwcheck(dto);
		if (result) { // 로그인 성공
			MemberDTO dto2 = viewMember(dto.getUserid());
			// setAttribute(변수명,값)
			session.setAttribute("userid", dto.getUserid());
			session.setAttribute("name", dto2.getName());
			System.out.println(session.getAttribute("userid"));
			System.out.println(session.getAttribute("name"));
		}
		return result;
	}
	@Override
	public boolean findId(MemberDTO dto, HttpSession session) {
		boolean result = memberDao.findId(dto);
		if (result) { // 로그인 성공
			MemberDTO dto2 = findMember(dto.getEmail());
			session.setAttribute("email", dto.getEmail());
			session.setAttribute("userid", dto2.getUserid());
			System.out.println(session.getAttribute("email"));
		}
		return result;
	}
	
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

	@Override
	public MemberDTO viewMember(String userid) {
		return memberDao.viewMember(userid);
	}
	@Override
	public MemberDTO findMember(String email) {
		return memberDao.findMember(email);
	}

	@Override
	public void insertMember(MemberDTO dto) {
		memberDao.insertMember(dto);
	}

	@Override
	public List<MemberDTO> memberList() {
		return memberDao.memberList();
	}
	@Override
	public void updateMember(MemberDTO dto) {
		memberDao.updateMember(dto);
	}
	@Override
	public void deleteMember(String userid) {
		memberDao.deleteMember(userid);
	}
}
