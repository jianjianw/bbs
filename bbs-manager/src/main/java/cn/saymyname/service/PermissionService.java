package cn.saymyname.service;

import cn.saymyname.bean.Permission;
import cn.saymyname.bean.User;

import java.util.List;

public interface PermissionService {


    List<Permission> queryAll();

    void insert(Permission permission);

    void update(Permission permission);

    void delete(Integer id);

    Permission queryById(Integer id);

    List<Integer> queryPermissionIdsByRoleId(Integer roleId);

    List<Permission> queryPermissionsByUser(User dbUser);
}
