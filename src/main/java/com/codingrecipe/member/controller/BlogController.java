package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.*;
import com.codingrecipe.member.service.BoardService;
import com.codingrecipe.member.service.MemberService;
import com.codingrecipe.member.utils.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.Collections;
import java.util.List;

import static com.codingrecipe.member.controller.HomeController.log;


@Controller
@RequestMapping("/blog")
@RequiredArgsConstructor
public class BlogController {
    private final BoardService boardService;
    private final MemberService memberService;
    @Value("${jwt.secret}")
    private String secretKey;

    @GetMapping("/")
    public String boardView(Model model, @ModelAttribute PageDto pageDto){
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
                                      @RequestParam(name = "fileData", required = false) MultipartFile[] files){
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
            boardDto.setIsFile('T');
            int result = boardService.postBlog(boardDto);
            if((result>0)){
                boardService.saveFile(files, result);
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
    public String blogDetail(@RequestParam(value = "id") Integer id, Model model){
        BoardDto boardDto = boardService.blogDetail(id);
        LikesDto likesDto = new LikesDto();
        likesDto.setMemberNickname(boardDto.getBoardWriter());
        likesDto.setBoardId(id);
        boolean userAlreadyLiked = boardService.findLike(likesDto);
        if (boardDto.getIsFile() == 'T') {
            List<FilesDto> filesDtos = boardService.findFilesById(id);
            model.addAttribute("files",filesDtos);
        }
        model.addAttribute("board",boardDto);
        model.addAttribute("userAlreadyLiked",userAlreadyLiked);
        return "boardViews/blogDetail";
    }
    @GetMapping("/updateLike")
    public ResponseEntity<?> saveLike(@RequestParam(value = "nick") String nick,
                                      @RequestParam(value = "id") Integer id){
        LikesDto likesDto = new LikesDto();
        likesDto.setBoardId(id);
        likesDto.setMemberNickname(nick);
        if(boardService.saveLike(likesDto)>0){
            boardService.increaseLike(id);
            return ResponseEntity.ok("success");
        }else {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Error occurred");
        }
    }
    @PostMapping("/editBlog")
    @ResponseBody
    public ResponseEntity<?> editBlog(
            @RequestParam("forWhat") String forWhat, @RequestParam("boardWriter") String boardWriter,
            @RequestParam("boardId") Integer boardId, @RequestParam("pass") String pass){
        MemberDto memberDto = memberService.findByNick(boardWriter);
        //패스워드 일치
        if(!memberDto.getMemberPassword().equals(pass)){
            return ResponseEntity.ok().body("{\"status\": \"edit\", \"redirect\": \"/blog/edit\"}");
        }
        if(forWhat.equals("Edit post")){
            return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
        }else if(forWhat.equals("Delete post")){
            if(boardService.deletePost(boardId)){
                return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
            }else{
                return ResponseEntity.ok().body("{\"status\": \"failed\", \"redirect\": \"/blog/detail?id="+boardId+"\"}");
            }
        }
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("{\"status\": \"failure\", \"redirect\": \"/blog/\"}");
    }

    @GetMapping("/edit")
    public String editPage(){
        return "/boardViews/editBlog";
    }
}

