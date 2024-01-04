package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.PageDto;
import com.codingrecipe.member.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/blog")
@RequiredArgsConstructor
public class BlogController {
    private final BoardService boardService;
    @GetMapping("/")
    public String mainBoardView(Model model){
        List<BoardDto> boardDtos = boardService.blogList();
        model.addAttribute("boardList", boardDtos);
        return "boardViews/blog";
    }
    @GetMapping("/projects")
    public String projectBoard(){
        return "boardViews/project";
    }

    @GetMapping("/drawing")
    public String drawingBoard(){
        return "boardViews/drawing";
    }

    @PostMapping("/save")
    //ModelAttribute = html의 태그 속성 "name"과 Dto의 필드 변수명이 같아야 한다!
    //setter를 통해서 호출
    public String save(@ModelAttribute BoardDto boardDto){
        int saveResult = boardService.save(boardDto);
        if (saveResult > 0){
            return "redirect:/board/";
        }else{
            return "boardViews/save";
        }
    }
    @PostMapping("/list")
    public String nowPage(@RequestBody PageDto pageDto){
        pageDto.prt();
        return "boardViews/list";
    }


}

