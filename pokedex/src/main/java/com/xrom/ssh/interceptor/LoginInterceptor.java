package com.xrom.ssh.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
public class LoginInterceptor implements HandlerInterceptor{

    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception exc)
            throws Exception {

    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response,
                           Object handler, ModelAndView modelAndView) throws Exception {
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response,
                             Object handler) throws Exception {
        String errmessage = "";
        String url = request.getRequestURI();
        if(url.indexOf("login.action")>=0){
            return true;
        }
        HttpSession session = request.getSession();
        String username = (String)session.getAttribute("username");
        if(username != null){
            session.setAttribute("isset",true);
            session.setAttribute("errms","");
            return true;
        }
        errmessage = "Please log in first!";
        session.setAttribute("isset",false);
        session.setAttribute("errms","Please login first");
        request.getRequestDispatcher("/").forward(request, response);

        return false;
    }

}
