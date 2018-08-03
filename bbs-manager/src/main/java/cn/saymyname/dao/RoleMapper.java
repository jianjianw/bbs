package cn.saymyname.dao;

import cn.saymyname.bean.Role;
import cn.saymyname.bean.User;
import org.apache.ibatis.annotations.Select;

import java.util.List;
import java.util.Map;

public interface RoleMapper {

    @Select("select * from t_role")
    List<Role> queryAll();

    List<Role> pageQuery(Map<String, Object> map);

    int pageQueryCount(Map<String, Object> map);
    @Select("select * from t_role where id = #{roleId}")
    Role queryRoleById(Integer roleId);

    void insertRolePermission(Map<String, Object> map);

    void deleteRolePermission(Map<String, Object> map);

}
