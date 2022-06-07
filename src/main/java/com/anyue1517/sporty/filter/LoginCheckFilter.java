package com.anyue1517.sporty.filter;

import com.alibaba.fastjson.JSON;
import com.anyue1517.sporty.common.BaseContext;
import com.anyue1517.sporty.common.Result;
import lombok.extern.slf4j.Slf4j;
import org.springframework.util.AntPathMatcher;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 *  本过滤器会对用户登录状态检查，如果没有登录，则打回登录
 */
@WebFilter(filterName = "LoginCheckFilter",urlPatterns = "/*")
@Slf4j
public class LoginCheckFilter implements Filter {
    //路径匹配器，支持通配符
    public static final AntPathMatcher PATH_MATCHER = new AntPathMatcher();

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        //1,获取本次请求的URI
        String requestURI = request.getRequestURI();

        log.info("拦截到请求：{}",requestURI);

        //2,定义不需要处理的请求路径
        String[] urls = new String[]{
                "/favicon.ico",
                "/user/login",
                "/user/register",
                "/files/upload",
                "/files/download",
                "/carstore",
                "/car",
                "/cars/upload",
                "/cars/download",
                "/refits/upload",
                "/refits/download",
                "/carsearch",
                "/brand",
                "/cars/**",
                "/files/**",
                "/refits/**",
                "/sporty_upload/**",
                "/user/sendMsg",
                "/user/loginByCode",
                //"/employee/login",
                //"/employee/logout",
                //"/common/**",
                //"/user/sendMsg",//移动端发送短信
                //"/user/login"//移动端登录
        };

        //3,判断本次请求是否需要被处理
        boolean check = check(urls, requestURI);

        //4,如果不需要处理，则直接放行
        if (check){
            log.info("本次请求不需要处理：{}",requestURI);
            filterChain.doFilter(request,response);
            return;
        }

        System.out.println("employee:!!!!!" + request.getSession().getAttribute("employee"));
        System.out.println("user:!!!!!" + request.getSession().getAttribute("user"));

        //5-1,判断登录状态，如果已登录，则直接放行
        if (request.getSession().getAttribute("employee") != null){
            log.info("用户已登录，用户ID为：{}",request.getSession().getAttribute("employee"));

            long empId = (long)request.getSession().getAttribute("employee");

            BaseContext.setCurrentId(empId);

            filterChain.doFilter(request,response);
            return;
        }
        //5-2,判断登录状态，如果已登录，则直接放行
        if (request.getSession().getAttribute("user") != null){
            log.info("用户已登录，用户ID为：{}",request.getSession().getAttribute("user"));

            long userId = (long)request.getSession().getAttribute("user");

            BaseContext.setCurrentId(userId);

            filterChain.doFilter(request,response);
            return;
        }

        log.info("用户未登录");
        //6,如果未登录。则返回未登录结果，通过输出流方式向客户端响应数据
        response.getWriter().write(JSON.toJSONString(Result.error("-1","请先登录")));

        return;

    }

    /**
     * 路径匹配，检查本次请求是否需要放行
     * @param urls
     * @param requestURI
     * @return
     */
    public boolean check(String[] urls,String requestURI){
        for (String url : urls) {
            boolean match = PATH_MATCHER.match(url, requestURI);
            if(match){
                return true;
            }
        }
        return false;
    }
}
