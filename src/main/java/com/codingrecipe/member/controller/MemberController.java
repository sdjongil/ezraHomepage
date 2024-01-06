package com.codingrecipe.member.controller;

import com.codingrecipe.member.dto.MemberDto;
import com.codingrecipe.member.service.MemberService;
import com.codingrecipe.member.utils.JwtUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.http.server.reactive.ServerHttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member")
@RequiredArgsConstructor
public class MemberController {
    private final MemberService memberService;
    @Value("${jwt.secret}")
    private String secretKey;
    private Long expiredMs = 1000 *60 *60l; //1시간
    @GetMapping("/")
    public String memberMain(){
        return "memberViews/index";
    }
    @GetMapping("/join")
    public String saveForm(){
        return "memberViews/join";
    }

    @PostMapping("/join")
    public String save(@ModelAttribute MemberDto memberDto){
        int saveResult = memberService.save(memberDto);
        if(saveResult > 0){ //회원가입 성공
            return "redirect:/member/?signup=Congratulations on signing up";
        }else{  // 회원가입 실패
            return "redirect:/member/?signup=please try again";
        }
    }
    @PostMapping("/login")
    @ResponseBody
    public String login(@ModelAttribute MemberDto memberDto,
                        HttpServletResponse httpServletResponse){
        MemberDto loginResult = memberService.login(memberDto);
        if(loginResult != null){ // 로그인 성공
            String logInToken = JwtUtil.createJwt(loginResult.getNickName(),secretKey, expiredMs);
            Cookie cookie = JwtUtil.createCookie(logInToken, expiredMs);
            httpServletResponse.addCookie(cookie); // 쿠키 추가
            return "ok";
        }else {  //로그인 실패
            //unauthorized = 401에러 발생시킴(인증 실패 에러 코드)
            return "fail";
        }
    }
    @GetMapping("/policy")
    public String policy(){
        return "memberViews/policy";
    }

    @GetMapping("/logout")
    public ResponseEntity<?> logout(){
        HttpHeaders headers = JwtUtil.logOutJwt();;
        return ResponseEntity.ok().headers(headers).build();
    }
    @GetMapping("/myprofile")
    public String myprofile(){
        return "memberViews/myProfile";
    }
    @GetMapping("/main")
    public String mainVeiw(Model model, @CookieValue(name = "auth_token",
            //true면 쿠키가 필수적으로 와야함 없으면 400오류 뱉음
            required = false) String token){
        if(token == null || token.isEmpty()){
            return "memberViews/index";
        }
        try{
            String nickName = JwtUtil.parsingJwt(token, secretKey);
            model.addAttribute("nickName", nickName);
        }catch (Exception e){
            return "memberViews/index";
        }
        return "memberViews/index";
    }

    @PostMapping("/email-check")
    //ajax요청 처리할 땐 리스폰스바디, 리스폰스엔티티로 처리해주어야한다.
    @ResponseBody
    //url의 member/email-check?memberEmail={값}일 때 memberEmail 값을 가져옴
    public String emailCheck(@RequestParam("memberEmail") String memberEmail){
        String checkresult = memberService.emailCheck(memberEmail);
        return checkresult;
    }
    @PostMapping("/nick-check")
    //ajax요청 처리할 땐 리스폰스바디, 리스폰스엔티티로 처리해주어야한다.
    @ResponseBody
    //url의 member/email-check?memberEmail={값}일 때 memberEmail 값을 가져옴
    public String nickCheck(@RequestParam("nickName") String nickName){
        String checkresult = memberService.nickCheck(nickName);
        return checkresult;
    }
}
