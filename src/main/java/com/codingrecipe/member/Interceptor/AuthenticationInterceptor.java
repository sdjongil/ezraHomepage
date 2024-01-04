package com.codingrecipe.member.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenticationInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        // 요청이 컨트롤러에 도달하기 전에 실행됩니다.
        // 인증 로직을 구현할 수 있습니다.
        // 여기서 true를 반환하면 요청 처리가 계속 진행되고, false를 반환하면 중단됩니다.
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        // 컨트롤러가 요청을 처리한 후, 뷰가 렌더링되기 전에 실행됩니다.
        // 요청 후 처리 로직을 구현할 수 있습니다.
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        // 요청 처리가 완전히 끝난 후, 즉 뷰가 렌더링되고 응답이 클라이언트에게 전송된 후에 실행됩니다.
        // 정리 작업 등을 구현할 수 있습니다.
    }
}