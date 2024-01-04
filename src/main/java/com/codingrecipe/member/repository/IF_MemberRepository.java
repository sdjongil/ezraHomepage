package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.MemberDto;

import java.util.List;

public interface IF_MemberRepository {
    int save(MemberDto memberDto);
    MemberDto login(MemberDto memberDto);
    List<MemberDto> findAll();
    MemberDto findById(Long id);
    void delete(Long id);
    MemberDto findByMemberEmail(String loginEmail);
    int update(MemberDto memberDto);
}
