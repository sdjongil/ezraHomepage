package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.PageDto;
import com.codingrecipe.member.repository.BoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardService{
    private final BoardRepository boardRepository;


    public int totalPage() {
        return boardRepository.totalPage();
    }

    public List<BoardDto> blogList(PageDto pageDto) {
        return boardRepository.boardList(pageDto);
    }

    public boolean postBlog(BoardDto boardDto) {
        if(boardRepository.postBlog(boardDto)>0){
            return true;
        }else {
            return false;
        }
    }

    public BoardDto blogDetail(Integer id) {
        return boardRepository.blogDetail(id);
    }
}
