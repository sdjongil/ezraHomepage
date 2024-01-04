package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.PageDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
//mybaties를 호출해야함 root-context파일에서 설정
public class BoardRepository implements IF_BoardRepository{
    //마이바티스 클래스 호출 자바와 맵퍼를 연결해주는 클래스
    private final SqlSessionTemplate sql;
    @Override
    public int save(BoardDto boardDto) {
        return sql.insert("Board.save", boardDto);
    }

    public List<BoardDto> nowPage(PageDto page) {
        return sql.selectList("Board.nowPage",page);
    }

    public int totalPage() {
        return sql.selectOne("Board.totalPage");
    }

    public List<BoardDto> boardList() {
        return sql.selectList("Board.findAll");
    }
}
