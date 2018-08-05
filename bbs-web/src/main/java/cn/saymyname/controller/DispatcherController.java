package cn.saymyname.controller;

import cn.saymyname.bean.AJAXResult;
import cn.saymyname.bean.Permission;
import cn.saymyname.bean.User;
import cn.saymyname.service.PermissionService;
import cn.saymyname.service.RoleService;
import cn.saymyname.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class DispatcherController {
    private static Logger logger = LoggerFactory.getLogger(DispatcherController.class);

    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private PermissionService permissionService;

    @RequestMapping("/login")
    public String login(){
        logger.info("登录跳转");
        return "login";
    }

    @RequestMapping("/main")
    public String main() {
        return "main";
    }

    @RequestMapping("/doAJAXLogin")
    @ResponseBody
    public AJAXResult doAJAXLogin(User user, HttpSession session){
        AJAXResult result = new AJAXResult();
        User dbUser = userService.doAJAXLogin(user);
        if(dbUser != null){
            String contextPath = session.getServletContext().getContextPath();
            //获取该用户的权限
            List<Permission> permissions = permissionService.queryPermissionsByUser(dbUser);

            Map<Integer, Permission> permissionMap = new HashMap<Integer, Permission>();
            Permission root = null;
            //将权限(uri)放入session中
            Set<String> uriSet = new HashSet<String>();
            for (Permission permission : permissions){
                permissionMap.put(permission.getId(), permission);
                if(StringUtils.isNotBlank(permission.getUrl())){
                    uriSet.add(contextPath+permission.getUrl());
                }
            }
            session.setAttribute("authUriSet",uriSet);//将该用户可以访问的url放入集合中

            for ( Permission permission : permissions ) {
                Permission child = permission;
                if ( child.getPid() == 0 ) {
                    root = permission;      //遍历结束之后会将数据都封装在根节点中
                } else {
                    Permission parent = permissionMap.get(child.getPid());
                    parent.getChildren().add(child);
                }
            }
            session.setAttribute("rootPermission", root);//将该用户的权限列表封装成权限树
            session.setAttribute("loginUser",dbUser);
            result.setSuccess(true);
        }else{
            result.setSuccess(false);
        }
        return result;
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        //session.removeAttribute("loginUser");
        session.invalidate();
        return "redirect:login";
    }
    @RequestMapping("/empty")
    public String empty(){
        return "empty";
    }

    @RequestMapping("/error")
    public String error() {
        return "error";
    }

    @RequestMapping("/shopping/index")
    public String shopping(){
        return "shopping/index";
    }

    @RequestMapping("/shopping/project01")
    public String project() {
        return "shopping/project01";
    }

    @RequestMapping("/weight/index")
    public String member() {
        return "weight/index";
    }
    @RequestMapping("/weight/member02")
    public String member02() {
        return "weight/member02";
    }





    @RequestMapping("/future/showme")
    public String showme() {
        return "future/showme";
    }


    @RequestMapping("/future/start01")
    public String start() {
        return "future/start01";
    }

    @RequestMapping("/future/start02")
    public String startStep() {
        return "future/start02";
    }

    //testEcharts.jsp
    @RequestMapping("/future/testEcharts")
    public String testEcharts() {
        return "future/testEcharts";
    }
    //火烈鸟
    @RequestMapping("/future/testThrees")
    public String testThrees() {
        return "future/testThrees";
    }


}
