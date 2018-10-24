package com.example.spring09.controller.member;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.spring09.model.member.dao.MemberDAO;
import com.example.spring09.model.member.dto.MemberDTO;
import com.example.spring09.service.member.MemberService;

@Controller // 컨트롤러 빈으로 등록
@RequestMapping("member/*") // 공통적인 url 매핑
public class MemberController {
	// 로깅을 위한 변수
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	@Inject
	MemberService memberService;
	
	@RequestMapping("home.do") // 세부적인 url 매핑
	public String goHome() {
		return "home"; // login.jsp로 이동
	}// login()
	
	@RequestMapping("login.do") // 세부적인 url 매핑
	public String login() {
		return "member/login"; // login.jsp로 이동
	}// login()

	@RequestMapping("login_check.do")
	public ModelAndView login_check(MemberDTO dto, HttpSession session) {
		// 로그인 성공 true, 실패 false
		boolean result = memberService.loginCheck(dto, session);
		ModelAndView mav = new ModelAndView();
		if (result) { // 로그인 성공
			mav.setViewName("home"); // 뷰의 이름
		} else { // 로그인 실패
			mav.setViewName("member/login");
			// 뷰에 전달할 값
			mav.addObject("message", "error");
		}
		return mav;
	}// login_check()
	

	@RequestMapping("pagego.do")
	public String move() {
		return "member/mypage";
	}

	@RequestMapping("member/insert.do")
	public String insert(@ModelAttribute MemberDTO dto) {
		memberService.insertMember(dto);
		return "member/writeResult";
	}// insert()

	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mav) {
		// 세션 초기화
		memberService.logout(session);
		// login.jsp로 이동
		mav.setViewName("member/login");
		mav.addObject("message", "logout");
		return mav;
	}// logout()
		// 회원탈퇴

	@RequestMapping("member/delete.do")
	public String delete(MemberDTO dto, Model model, HttpSession session, String userid) {
		memberService.deleteMember(userid);
		memberService.logout(session);
		return "member/thankyou";
	}

	@RequestMapping("member/write.do") // url mapping
	public String write() {

		return "member/write";
	}// write()

	@RequestMapping("member/list.do") // url mapping
	public String memberList(Model model) {
		List<MemberDTO> list = memberService.memberList();
		model.addAttribute("list", list);
		// WEB-INF/views/member/member_list.jsp 포워딩
		return "member/member_list";
	}// memberList()

	@RequestMapping("member/find.do")
	public String findId() {
		return "member/findProfile";
	}
	@RequestMapping("member/find2.do")
	public String findpasswd() {
		return "member/findProfile2";
	}

	@RequestMapping("member/update.do")
	public String update(MemberDTO dto, Model model) {

		memberService.updateMember(dto);

		return "home";
	}
	@RequestMapping("mypage.do")
	public ModelAndView pagepwcheck(MemberDTO dto, HttpSession session) {
		
		boolean result = memberService.mypwcheck(dto, session);
		ModelAndView mav = new ModelAndView();
		if (result) {
			mav.setViewName("member/mypagego");
		} else {
			mav.setViewName("member/mypage");
			mav.addObject("message", "error");
		}
		return mav;
	}// login_check()
	@RequestMapping("member/view.do")
	public String view(@RequestParam String userid, Model model) {
		// 모델에 자료 저장
		model.addAttribute("dto", memberService.viewMember(userid));
		// view.jsp로 포워딩
		return "member/mypagego";
	}// view()
	
	@RequestMapping("member/idFind.do")
	public ModelAndView findId(MemberDTO dto, HttpSession session) {
		boolean result = memberService.findId(dto, session);
		ModelAndView mav = new ModelAndView();
		if (result) {
			mav.setViewName("member/findResult");
		} else {
			mav.setViewName("member/findProfile");
			mav.addObject("message", "error");
		}
		return mav;
	}// login_check()
	

	/*@RequestMapping("popup_checkNick/{userid}")
	   public ModelAndView popNickCheck(@PathVariable String userid, ModelAndView mav) {
	      System.out.println("popup_checkId.do userid:"+userid);
	      mav.setViewName("member/idCheck");
	      mav.addObject("userid", userid);
	      return mav;
	   }
	   @RequestMapping("popBandCheck.do")
	   public ModelAndView checkId(MemberDTO dto, HttpSession session,String userid) {
	      System.out.println("checkId.do 호출");
	      boolean result = memberService.duplication(dto,session,userid);
	      System.out.println("checkId.do result:"+result);
	          ModelAndView mav = new ModelAndView();
	      if(result) {
	         mav.setViewName("member/idCheck");
	         mav.addObject("userid", userid);
	         mav.addObject("message", "possible");    
	      }else {
	         mav.setViewName("member/idCheck");
	         mav.addObject("message", "impossible");     
	      }
	      return mav;
	   }*/
	   
	}
	
	
