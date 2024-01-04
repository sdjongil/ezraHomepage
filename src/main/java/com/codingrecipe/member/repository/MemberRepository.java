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
public class MemberRepository implements IF_MemberRepository {
    //마이바티스에서 제공하는 객체
    public final SqlSessionTemplate sql;
    @Override
    public int save(MemberDto memberDto){
        // mapper에 namespace와 Member와 일치해야함 그뒤에 (.뒤) save는 id와 일치해야함
        // 넘겨준 dto는 mapper의 parameterType에 적용됨
        // 결론 : 네임스페이스.아이디 매개변수와 dto를 매개 변수로 넘겨주면 namespace=>id값에 맞는 sql문이
        // dto가 parameterType에 맞춰져서 쿼리문 작성
        // 추가 : 원래는 mapper에 dto의 풀주소(ex com.codingrecipe.member.dto.MemberDTO)를 적어야하지만
        // mybatis-config.xml파일에서 풀주소에 대한 별칭을 설정해줄수있다. 이 별칭을 mapper의 parameterType에 적용
        return sql.insert("Member.save", memberDto);
    }
    @Override
    public MemberDto login(MemberDto memberDto) {
        //한개의 결과가 나올땐 selectOne메서드
        return sql.selectOne("Member.login", memberDto);
    }
    @Override
    public List<MemberDto> findAll() {
        //여러개(리스트형태)의 결과가 나올땐 selectList
        return sql.selectList("Member.findAll");
    }
    @Override
    public MemberDto findById(Long id) {
        return sql.selectOne("Member.findById", id);
    }
    @Override
    public void delete(Long id) {
        //완료 결과 인트로 반환됨..
        int result = sql.delete("Member.delete", id);
    }
    @Override
    public MemberDto findByMemberEmail(String loginEmail) {
        return sql.selectOne("Member.findByMemberEmail", loginEmail);
    }
    public MemberDto findByNickname(String nickname) {
        return sql.selectOne("Member.findByNickName", nickname);
    }
    @Override
    public int update(MemberDto memberDto) {
        return sql.update("Member.update", memberDto);
    }
}
