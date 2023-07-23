package org.snnu.lier.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.snnu.lier.model.mysql.NameMapping;


/**
 * @Auther: litm
 * @Date: 2022/3/30 15:40
 * @Description:
 */

public interface NameMappingDao {
    public NameMapping queryByString(String queryString);
}
