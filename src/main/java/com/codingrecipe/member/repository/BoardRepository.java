package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.FilesDto;
import com.codingrecipe.member.dto.LikesDto;
import com.codingrecipe.member.dto.PageDto;
import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
//mybaties를 호출해야함 root-context파일에서 설정
public class BoardRepository{
    //마이바티스 클래스 호출 자바와 맵퍼를 연결해주는 클래스
    private final SqlSessionTemplate sql;


    public int totalPage() {
        return sql.selectOne("Board.totalPage");
    }

    public List<BoardDto> boardList(PageDto pageDto) {
        return sql.selectList("Board.findBlog", pageDto);
    }

    public int postBlog(BoardDto boardDto) {
        sql.insert("Board.postBlog", boardDto);
        int ss = sql.selectOne("Board.findMaxId");
        return ss;
    }

    public BoardDto blogDetail(Integer id) {
        sql.update("Board.increaseView", id);
        return sql.selectOne("Board.blogDetail",id);
    }


    public void saveFile(FilesDto filesDto) {
        sql.insert("File.save",filesDto);
    }

    public List<FilesDto> file(Integer id) {
        return sql.selectList("File.findByBoardId", id);
    }


    public int findLike(LikesDto likesDto) {
        if(sql.selectOne("Likes.findLike",likesDto) == null){
            return 0;
        }else {
            return 1;
        }
    }

    public int saveLike(LikesDto likesDto) {
        return sql.insert("Likes.saveLike", likesDto);
    }

    public void increaseLike(Integer id) {
        sql.update("Board.increaseLike", id);
    }
}
