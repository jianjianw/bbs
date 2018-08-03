package cn.saymyname.web;

import cn.saymyname.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    /**
     * 在控制器执行之前完成业务逻辑操作
     * 方法的返回值决定逻辑是否继续执行， true，表示继续执行， false, 表示不再继续执行。
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //判断当前用户是否登录
        HttpSession session = request.getSession();
        User loginUser = (User)session.getAttribute("loginUser");
        if(loginUser != null){
            return true;
        }else{
            String contextPath = session.getServletContext().getContextPath();
            response.sendRedirect(contextPath+"/login");
            return false;
        }
    }
    /**
     * 在控制器执行完毕之后执行的逻辑操作
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }
    /**
     * 在完成视图渲染之后，执行此方法。
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
