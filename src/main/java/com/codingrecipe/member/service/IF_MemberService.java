package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.MemberDto;

import java.util.List;

public interface IF_MemberService {
    // 서비스단
    // 요청은 순서는 클라이언트 요청(url, method, parameters)
    // apache tomcha
    // apring controller > service > dao > mybatis > database

    //서비스 구현은 별도의 클래스에서 구현 받아 메서드를 재정의한다.
    public int save(MemberDto memberDto); // 컨트롤러에게 제공하는 서비스 정의
    public MemberDto login(MemberDto memberDto);
    public List<MemberDto> findAll();
    public MemberDto findById(Long id);
    public void delete(Long id);
    public MemberDto findByMemberEmail(String loginEmail);
    public boolean update(MemberDto memberDto);
    public String emailCheck(String memberEmail);

}
