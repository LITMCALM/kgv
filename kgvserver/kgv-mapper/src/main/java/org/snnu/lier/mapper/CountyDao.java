package org.snnu.lier.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.snnu.lier.model.mysql.County;


import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 17:39
 * @Description:
 */

public interface CountyDao {
    public County queryByCountyName(String countryName);
    public List<County> queryAll();
    public County queryByCountyId(int countryId);
}
