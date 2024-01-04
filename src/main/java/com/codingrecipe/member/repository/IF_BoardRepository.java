package com.codingrecipe.member.repository;

import com.codingrecipe.member.dto.BoardDto;

public interface IF_BoardRepository {
    int save(BoardDto boardDto);
}
