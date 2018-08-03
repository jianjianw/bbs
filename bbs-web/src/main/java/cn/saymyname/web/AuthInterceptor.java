package cn.saymyname.web;

import cn.saymyname.bean.Permission;
import cn.saymyname.service.PermissionService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AuthInterceptor extends HandlerInterceptorAdapter {

    private static Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);

    @Autowired
    private PermissionService permissionService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        //获得用户请求路径
        String requestURI = request.getRequestURI();
        String contextPath = request.getSession().getServletContext().getContextPath();

        //判断当前路径是否需要权限验证
        //查询所有需要权限验证的路径
        List<Permission> permissions = permissionService.queryAll();
        Set<String> uriSet = new HashSet<String>();
        for(Permission permission: permissions){
            if(StringUtils.isNotBlank(permission.getUrl())){
                uriSet.add(contextPath+permission.getUrl());
            }
        }
        //判断用户的访问路径是否需要验证
        if(uriSet.contains(requestURI)){
            ObjectMapper mapper = new ObjectMapper();
            String uriSetString = mapper.writeValueAsString(uriSet);
            logger.info("requestURI-----------："+requestURI);
            logger.info("contextPath-----------："+contextPath);
            logger.info("uriSetString-----------："+uriSetString);
            //判断该该访问路径是否合法
            //获取该用户的合法访问路径
            Set<String> authUriSet = (Set)request.getSession().getAttribute("authUriSet");
            logger.info("authUriSet-----------："+authUriSet);
            if(authUriSet.contains(requestURI)){
                return true;
            }else{
                response.sendRedirect(contextPath+"/error");
                return false;
            }
        }else{
            return true;
        }
    }
}
