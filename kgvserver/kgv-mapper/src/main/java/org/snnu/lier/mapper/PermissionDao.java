package org.snnu.lier.mapper;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.snnu.lier.model.mysql.Permission;
import org.springframework.stereotype.Repository;

@Repository
public interface PermissionDao extends BaseMapper<Permission> {
}
