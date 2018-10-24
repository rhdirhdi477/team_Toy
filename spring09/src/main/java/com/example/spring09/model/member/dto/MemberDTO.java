package com.example.spring09.model.member.dto;

import java.util.Date;

public class MemberDTO {
	
	private String userid;
	private String passwd; 
	private String name; 
	private String email; 
	private String ph;
	private String addr;
	private String addrdetail;
	private String addrdetail2;
	private Date join_date; 
	
	public MemberDTO() {

	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getAddrdetail() {
		return addrdetail;
	}

	public void setAddrdetail(String addrdetail) {
		this.addrdetail = addrdetail;
	}

	public String getAddrdetail2() {
		return addrdetail2;
	}

	public void setAddrdetail2(String addrdetail2) {
		this.addrdetail2 = addrdetail2;
	}

	public Date getJoin_date() {
		return join_date;
	}

	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}

	@Override
	public String toString() {
		return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + ", email=" + email + ", ph="
				+ ph + ", addr=" + addr + ", addrdetail=" + addrdetail + ", addrdetail2=" + addrdetail2 + ", join_date="
				+ join_date + "]";
	}

}
