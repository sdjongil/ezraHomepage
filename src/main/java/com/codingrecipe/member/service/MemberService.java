package com.codingrecipe.member.service;

import com.codingrecipe.member.repository.MemberRepository;
import com.codingrecipe.member.dto.MemberDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor //final이 붙은 필드만 가지고 생성자를 만드는 어노테이션(생성자 주입)
public class MemberService implements IF_MemberService {
    private final MemberRepository memberRepository;
    @Override
    public int save(MemberDto memberDto) {
        return memberRepository.save(memberDto);
    }
    @Override
    public boolean login(MemberDto memberDto) {
        MemberDto loginMember = memberRepository.login(memberDto);
        if(loginMember != null){
            return true;
        }else{
            return false;
        }
    }
    @Override
    public List<MemberDto> findAll() {
        return memberRepository.findAll();
    }
    @Override
    public MemberDto findById(Long id) {
        return memberRepository.findById(id);
    }
    @Override
    public void delete(Long id) {
        memberRepository.delete(id);
    }
    @Override
    public MemberDto findByMemberEmail(String loginEmail) {
        return memberRepository.findByMemberEmail(loginEmail);
    }
    @Override
    public boolean update(MemberDto memberDto) {
        int result = memberRepository.update(memberDto);
        if (result > 0){
            return true;
        }else {
            return false;
        }
    }
    @Override
    public String emailCheck(String memberEmail) {
        MemberDto memberDto = memberRepository.findByMemberEmail(memberEmail);
        if(memberDto == null){
            return "ok";
        }else{
            return "no";
        }
    }
}
