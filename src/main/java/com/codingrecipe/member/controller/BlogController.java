package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.*;
import com.codingrecipe.member.service.BoardService;
import com.codingrecipe.member.service.MemberService;
import com.codingrecipe.member.utils.JwtUtil;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
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
            boardDto.setIsFile("F");
            int result = boardService.postBlog(boardDto);
            if((result>0)){
                return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
            }else{
                return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("{\"status\": \"failure\", \"redirect\": \"/blog/writeBlog\"}");
            }
        }else{
            boardDto.setIsFile("T");
            //result = 게시물 번호로 리턴
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
    public String blogDetail(@RequestParam(value = "id") Integer id, Model model,
                             @CookieValue(name = "auth_token", required = false) String logInToken){
        String nickname = "anonymous";
        if(logInToken == null || logInToken.isEmpty()){
            model.addAttribute("nickName", nickname);
        }else{
            try{
                nickname = JwtUtil.parsingJwt(logInToken, secretKey);
                model.addAttribute("nickName", nickname);
            }catch (Exception e){
                log.error(String.valueOf(e));
            }
        }
        boardService.updateViews(id);
        BoardDto boardDto = boardService.blogDetail(id);
        LikesDto likesDto = new LikesDto();
        likesDto.setMemberNickname(nickname);
        likesDto.setBoardId(id);
        boolean userAlreadyLiked = boardService.findLike(likesDto);
        if (boardDto.getIsFile().equals("T")) {
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
            return ResponseEntity.ok().body("{\"status\": \"passWrong\", \"redirect\": \"/blog/detail?id="+boardId+"\"}");
        }
        if(forWhat.equals("Edit post")){
            return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/edit?id="+boardId+"\"}");
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
    public String editPage(Model model, @RequestParam("id")Integer boardId) throws JsonProcessingException {
        BoardDto boardDto = boardService.blogDetail(boardId);
        if (boardDto.getIsFile().equals("T")) {
            List<FilesDto> filesDtos = boardService.findFilesById(boardId);
            ObjectMapper mapper = new ObjectMapper();
            String filesJson = mapper.writeValueAsString(filesDtos);
            model.addAttribute("filesJson", filesJson);
        }
        model.addAttribute("board", boardDto);
        return "/boardViews/editBlog";
    }
    @PostMapping("/updateBlog")
    public ResponseEntity<?> updateBlog(@ModelAttribute BoardDto boardDto,
                                        @RequestParam(name = "deleteFile", required = false) String[] deleteFiles,
                                        @RequestParam(name = "fileData", required = false) MultipartFile[] files)
    {
        int result = boardService.updateBlog(boardDto);
        if (result==0){        //게시판 (파일제외) 테이블 등록 실패 시
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("{\"status\": \"failure\", \"redirect\": \"/blog/writeBlog\"}");
        }
        //새로운 파일있을 시 저장
        if(files != null){
            int id = Math.toIntExact(boardDto.getId());
            boardService.saveFile(files, id);
        }
        //기존 파일 삭제했을 시 삭제
        if (deleteFiles !=null){
            for (String file : deleteFiles){
                boardService.deleteOnlyFile(file);
                String uploadPath = "D:\\spring1226\\springWorkPlace\\src\\main\\webapp\\resources\\static\\userFiles\\";
                String filePath = uploadPath +file;
                File fileDelete = new File(filePath);
                fileDelete.delete();
            }
        }
        return ResponseEntity.ok().body("{\"status\": \"success\", \"redirect\": \"/blog/\"}");
    }
    @GetMapping("/searchByTitle")
    public String searchByTitle(@RequestParam(name = "title")String title, Model model){
        List<BoardDto> boardDtos = boardService.searchByTitle(title);
        model.addAttribute("boardList", boardDtos);
        return "boardViews/blog";
    }

}

