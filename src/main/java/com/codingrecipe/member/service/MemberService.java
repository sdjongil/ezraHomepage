package com.codingrecipe.member.service;

import com.codingrecipe.member.repository.MemberRepository;
import com.codingrecipe.member.dto.MemberDto;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor //final이 붙은 필드만 가지고 생성자를 만드는 어노테이션(생성자 주입)
public class MemberService{
    private final MemberRepository memberRepository;
    public int save(MemberDto memberDto) {
        return memberRepository.save(memberDto);
    }
    public MemberDto login(MemberDto memberDto) {
        MemberDto loginMember = memberRepository.login(memberDto);
        if(loginMember != null){
            return loginMember;
        }else{
            return loginMember;
        }
    }

    public String emailCheck(String memberEmail) {
        MemberDto memberDto = memberRepository.findByMemberEmail(memberEmail);
        if(memberDto == null){
            return "ok";
        }else{
            return "no";
        }
    }
    public String nickCheck(String nickname) {
        MemberDto memberDto = memberRepository.findByNickname(nickname);
        if(memberDto == null){
            return "ok";
        }else{
            return "no";
        }
    }

    public MemberDto findByNick(String boardWriter) {
        return memberRepository.findByNickname(boardWriter);
    }
}
