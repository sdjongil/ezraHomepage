package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.dto.FilesDto;
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
import org.springframework.web.multipart.MultipartFile;

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
    public String boardView(Model model, @ModelAttribute PageDto pageDto){
        System.out.println(pageDto.toString());
        List<BoardDto> boardDtos = boardService.blogList(pageDto);
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
            required = false) String logInToken, PageDto pageDto){
        if(logInToken == null || logInToken.isEmpty()){
            model.addAttribute("nickName", "anonymous");
            return "memberViews/index";
        }
        try{
            String nickName = JwtUtil.parsingJwt(logInToken, secretKey);
            model.addAttribute("nickName", nickName);
            return "boardViews/writeBlog";
        }catch (Exception e){
            log.error("Error parsing JWT token: " + e.getMessage());
            model.addAttribute("nickName", "anonymous");
            List<BoardDto> boardDtos = boardService.blogList(pageDto);
            model.addAttribute("boardList", boardDtos);
            return "boardViews/blog";
        }
    }
    @PostMapping("/postBlog")
    @ResponseBody
    public ResponseEntity<?> postBlog(@ModelAttribute BoardDto boardDto,
                                      @RequestParam(name = "fileData", required = false) MultipartFile[] files,
                                      FilesDto filesDto){
        //게시물 저장과 동시에 id값 가져옴
        if(files == null){
            boardDto.setIsFile('F');
            int result = boardService.postBlog(boardDto);
            if((result>0)){
                return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
            }else{
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("{\"status\": \"failure\", \"redirect\": \"/blog/writeBlog\"}");
            }
        }else{
            int result = (Integer) boardService.postBlog(boardDto);
            if((result>0)){
                filesDto.setBoardId(String.valueOf(result));
                boardService.saveFile(files, filesDto);
                return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
            }else{
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("{\"status\": \"failure\", \"redirect\": \"/blog/writeBlog\"}");
            }
        }
    }
    @GetMapping("/blogTotal")
    @ResponseBody
    public int blogTotal(){
        return boardService.totalPage();
    }
    @GetMapping("/detail")
    public String blogDetail(@RequestParam Integer id, Model model, BoardDto boardDto){
        boardDto = boardService.blogDetail(id);
        model.addAttribute("board",boardDto);
        return "boardViews/blogDetail";
    }


}

