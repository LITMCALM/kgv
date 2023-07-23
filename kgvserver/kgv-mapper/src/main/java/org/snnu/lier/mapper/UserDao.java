package org.snnu.lier.mapper;



import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.snnu.lier.model.mysql.User;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDao extends BaseMapper<User> {

}
