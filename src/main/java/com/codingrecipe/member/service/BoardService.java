package com.codingrecipe.member.service;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.PageDto;
import com.codingrecipe.member.repository.BoardRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class BoardService implements IF_BoardService {
    private final BoardRepository boardRepository;
    @Override
    public int save(BoardDto boardDto) {
        return boardRepository.save(boardDto);
    }

    public List<BoardDto> nowPage(PageDto page) {
        return boardRepository.nowPage(page);
    }

    public int totalPage() {
        return boardRepository.totalPage();
    }

    public List<BoardDto> blogList() {
        return boardRepository.boardList();
    }

    public boolean postBlog(BoardDto boardDto) {
        if(boardRepository.postBlog(boardDto)>0){
            return true;
        }else {
            return false;
        }
    }
}
