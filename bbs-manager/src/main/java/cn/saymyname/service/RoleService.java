package cn.saymyname.service;

import cn.saymyname.bean.Role;
import cn.saymyname.bean.User;

import java.util.List;
import java.util.Map;

public interface RoleService {

    List<Role> queryAll();

    List<Role> pageQuery(Map<String, Object> map);

    int pageQueryCount(Map<String, Object> map);

    Role queryRoleById(Integer roleId);

    void insertRolePermission(Map<String, Object> map);
}
