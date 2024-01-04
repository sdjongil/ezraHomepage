package com.codingrecipe.member.utils;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseCookie;

import javax.servlet.http.Cookie;
import java.util.Date;

public class JwtUtil {

    public  static String createJwt(String userEmail, String secretKey, Long expireMs){
        //일종의 map형태의 보관함 이게 토큰
        Claims claims = Jwts.claims();
        //여기에 토큰에 사용자 이메일 정보가 들어감
        claims.put("userEmail", userEmail);
        String logInToken = Jwts.builder()
                .setClaims(claims)
                .setIssuedAt(new Date(System.currentTimeMillis()))
                //언제까지 유지할지 시간 설정
                .setExpiration(new Date(System.currentTimeMillis() + expireMs))
                //어떤 암호 알고리즘, 키로 할지
                .signWith(SignatureAlgorithm.HS256, secretKey)
                .compact();
        return logInToken;
    }
    public static Cookie createCookie(String token, long expiredMs){
        Cookie cookie = new Cookie("auth_token", token);
        cookie.setHttpOnly(true);
        cookie.setMaxAge((int) (expiredMs / 1000)); // 만료 시간 설정
        cookie.setPath("/");
        cookie.setSecure(false);
        return cookie;
    }

    public static String parsingJwt(String token, String secretKey){
        Claims claims = Jwts.parser()
                .setSigningKey(secretKey)
                .parseClaimsJws(token)
                .getBody();
        return claims.get("userEmail", String.class);
    }
    public static HttpHeaders logOutJwt(){
        HttpHeaders headers = new HttpHeaders();
        ResponseCookie tokenCookie = ResponseCookie.from("auth_token","")
                .path("/")
                .httpOnly(true)
                .secure(false)
                .maxAge(0)
                .build();
        headers.add(HttpHeaders.SET_COOKIE, tokenCookie.toString());
        return headers;
    }
}
