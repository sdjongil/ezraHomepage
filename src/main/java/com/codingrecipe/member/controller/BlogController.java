package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.PageDto;
import com.codingrecipe.member.service.BoardService;
import com.codingrecipe.member.utils.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.codingrecipe.member.controller.HomeController.log;


@Controller
@RequestMapping("/blog")
@RequiredArgsConstructor
public class BlogController {
    private final BoardService boardService;
    @Value("${jwt.secret}")
    private String secretKey;
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

    @GetMapping("/writeBlog")
    public String writeBlog(Model model, @CookieValue(name = "auth_token",
            required = false) String logInToken){
        if(logInToken == null || logInToken.isEmpty()){
            model.addAttribute("nickName", "anonymous");
            List<BoardDto> boardDtos = boardService.blogList();
            model.addAttribute("boardList", boardDtos);
            return "boardViews/blog";
        }
        try{
            String nickName = JwtUtil.parsingJwt(logInToken, secretKey);
            model.addAttribute("nickName", nickName);
            return "boardViews/writeBlog";
        }catch (Exception e){
            log.error("Error parsing JWT token: " + e.getMessage());
            model.addAttribute("nickName", "anonymous");
            List<BoardDto> boardDtos = boardService.blogList();
            model.addAttribute("boardList", boardDtos);
            return "boardViews/blog";
        }
    }
    @PostMapping("/postBlog")
    @ResponseBody
    public ResponseEntity<?> postBlog(@ModelAttribute BoardDto boardDto){
        if(boardService.postBlog(boardDto)){
            return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
        }else{
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("{\"status\": \"failure\", \"redirect\": \"/blog/writeBlog\"}");
        }
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

