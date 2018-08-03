package cn.saymyname.controller;

import cn.saymyname.bean.AJAXResult;
import cn.saymyname.bean.Page;
import cn.saymyname.bean.Role;
import cn.saymyname.bean.User;
import cn.saymyname.service.RoleService;
import cn.saymyname.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/user")
public class UserController {

    private static Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;


    @RequestMapping("/index")
    public String index(){
        return "/user/index";
    }


    @ResponseBody
    @RequestMapping("/pageQuery")
    public Object pageQuery(String queryText, Integer pageNo, Integer pageSize){
        AJAXResult result  = new AJAXResult();
        try {
            Map<String,Object> map  = new HashMap<String,Object>();
            map.put("start",(pageNo-1) * pageSize);
            map.put("size",pageSize);
            map.put("queryText",queryText);
            //获取分页数据
            List<User>  users = userService.pageQuery(map);
            //获取总条数
            int totalSize = userService.pageQueryCount(map);
            //获取总页数
            int pageCount = 0;
            if(totalSize % pageSize == 0){
                pageCount = totalSize/pageSize;
            }else{
                pageCount = totalSize/pageSize + 1;
            }
            //封装数据
            Page<User>  page  = new Page<User>();
            page.setDatas(users);
            page.setPageNo(pageNo);
            page.setPageSize(pageSize);
            page.setPageCount(pageCount);
            page.setTotalSize(totalSize);

            result.setData(page);
            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
            logger.info("分页查询失败");
        }
        return result;
    }

    @RequestMapping("/add")
    public String addUser(){
        return "/user/add";
    }
    @ResponseBody
    @RequestMapping("insert")
    public AJAXResult insert(User user){
        AJAXResult result =  new AJAXResult();
        try {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String createTime = sdf.format(Calendar.getInstance().getTime());
            user.setCreateTime(createTime);
            user.setPassword("12346");
            userService.insertUser(user);
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/edit")
    public String edit(Integer userId ,Model model){
        User user = userService.queryById(userId);
        model.addAttribute("user",user);
        return "/user/edit";
    }

    @ResponseBody
    @RequestMapping("/update")
    public AJAXResult update(User user){
        AJAXResult result = new AJAXResult();
        try {
            userService.update(user);
            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("/delete")
    public AJAXResult delete(Integer userId){
        AJAXResult result = new AJAXResult();
        try {
            userService.deleteUserById(userId);
            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;
    }

    @ResponseBody
    @RequestMapping("/deletes")
    public AJAXResult deletes(Integer[] userId){

        AJAXResult result = new AJAXResult();
        try {
            userService.deletes(userId);
            result.setSuccess(true);
        } catch (Exception e) {
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;
    }


    @RequestMapping("/assign")
    public String assgin(Integer userId,Model model){


        User user = userService.queryById(userId);
        model.addAttribute("user",user);

        List<Role> assingedRoles = new ArrayList<Role>();
        List<Role> unassignRoles = new ArrayList<Role>();
        //查询所有juese
        List<Role> roles = roleService.queryAll();
        //查询该用户的角色
        List<Integer> roleIds = userService.queryRoleIdsByUserId(userId);

        for (Role role : roles){
            if(roleIds.contains(role.getId())){
                assingedRoles.add(role);//已经分配的角色
            }else{
                unassignRoles.add(role);//未分配的角色
            }
        }
        model.addAttribute("assingedRoles",assingedRoles);
        model.addAttribute("unassignRoles",unassignRoles);
        return "/user/assign";
    }


    @ResponseBody
    @RequestMapping("/doAssign")
    public AJAXResult doAssign(Integer[] unAssignRoleIds,Integer userId){
        AJAXResult result = new AJAXResult();
        try {
            //在角色权限表中添加数据
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("roleIds",unAssignRoleIds);
            map.put("userId",userId);
            userService.insertUserRoles(map);
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
            e.printStackTrace();
        }
        return result;

    }

    @ResponseBody
    @RequestMapping("/doUnAssign")
    public AJAXResult doUnAssign(Integer[] assignRoleIds,Integer userId){

        AJAXResult result = new AJAXResult();
        try {
            //在角色权限表中添加数据
            Map<String,Object> map = new HashMap<String,Object>();
            map.put("roleIds",assignRoleIds);
            map.put("userId",userId);
            userService.deleteUserRoles(map);
            result.setSuccess(true);
        } catch (Exception e) {
            result.setSuccess(false);
            e.printStackTrace();
        }
        return result;
    }

}
