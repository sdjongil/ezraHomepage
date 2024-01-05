package com.codingrecipe.member.controller;

import com.codingrecipe.member.utils.JwtUtil;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@Controller
public class HomeController {
    @Value("${jwt.secret}")
    private String secretKey;
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

}
