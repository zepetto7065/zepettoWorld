package com.zepetto.world.service;


import com.zepetto.world.domain.MemberVO;

public interface MemberService {
	void join(MemberVO vo);
	Integer getBno();
	int getTotalCount();
	int checkId(String id);
	int checkEmail(String checkEmail);
	MemberVO loginUserInfo(MemberVO vo);
	int checkUser(MemberVO vo);
}
