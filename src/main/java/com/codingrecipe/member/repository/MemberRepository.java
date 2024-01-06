package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.MemberDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
//마이바이스 객체를 주입 받기 위해 생성자 주입 어노테이션
//필드에 final로 만들어진 객체에 주입해줌
@RequiredArgsConstructor
public class MemberRepository {
    //마이바티스에서 제공하는 객체
    public final SqlSessionTemplate sql;
    public int save(MemberDto memberDto){
        return sql.insert("Member.save", memberDto);
    }
    public MemberDto login(MemberDto memberDto) {
        //한개의 결과가 나올땐 selectOne메서드
        return sql.selectOne("Member.login", memberDto);
    }
    public MemberDto findByMemberEmail(String loginEmail) {
        return sql.selectOne("Member.findByMemberEmail", loginEmail);
    }
    public MemberDto findByNickname(String nickname) {
        return sql.selectOne("Member.findByNickName", nickname);
    }
}
