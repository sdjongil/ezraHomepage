package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.BoardDto;
import com.codingrecipe.member.utils.JwtUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import static com.codingrecipe.member.controller.HomeController.log;

@Controller
@RequestMapping("/protected")
public class ProtectedController {
    @Value("${jwt.secret}")
    private String secretKey;
    @GetMapping("/")
    public String protectedEdit(Model model, @CookieValue(name = "auth_token",
            required = false) String loginToken,
                                @RequestParam(value = "id")Integer boardId,
                                @RequestParam(value = "nick")String nick,
                                @RequestParam(value = "forWhat")String forWhat){
        if(loginToken == null || loginToken.isEmpty()){
            //로그인 안되어있을 시
            model.addAttribute("nickName", "anonymous");
            return "memberViews/index";
        }
        try{
            BoardDto boardDto = new BoardDto();
            String nickName = JwtUtil.parsingJwt(loginToken, secretKey);
            if(nickName.equals(nick)){
                boardDto.setBoardWriter(nickName);
                boardDto.setId(Long.valueOf(boardId));
                model.addAttribute("boardDto", boardDto);
                model.addAttribute("forWhat", forWhat);
                return "protectedPage";
            }else{
                //글쓴이, 로그인 불일치
                model.addAttribute("nickName", "Others");
                return "memberViews/index";
            }
        }catch (Exception e){
            log.error("Error parsing JWT token: " + e.getMessage());
        }
        return "protectedPage";
    }


}
