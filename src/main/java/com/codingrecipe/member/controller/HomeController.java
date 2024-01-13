package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.MailDto;
import com.codingrecipe.member.service.MailService;
import com.codingrecipe.member.utils.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
@RequiredArgsConstructor
public class HomeController {
    @Value("${jwt.secret}")
    private String secretKey;
    private final MailService mailService;
    static final Logger log = LoggerFactory.getLogger(HomeController.class);

    @GetMapping("/")
    public String index(Model model, @CookieValue(name = "auth_token",
    required = false) String logInToken) {
        if(logInToken == null || logInToken.isEmpty()){
            model.addAttribute("nickName", "Mx.anonymous");
            return "main";
        }
        try{
            String nickName = JwtUtil.parsingJwt(logInToken, secretKey);
            model.addAttribute("nickName", nickName);
        }catch (Exception e){
            log.error("Error parsing JWT token: " + e.getMessage());
            return "main";
        }
        return "main";
    }
    @GetMapping("/about")
    public String aboutMe(){
        return "about";
    }

    @GetMapping("/contact")
    public String contact(){
        return "contact";
    }

    @PostMapping("/sendMail")
    public String sendMail(@ModelAttribute MailDto mailDto){
        if(mailService.send(mailDto)){
            return "thankYou";
        }else {
            return "error";
        }
    }

}
