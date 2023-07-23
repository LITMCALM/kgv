package org.snnu.lier.mapper;



import org.apache.ibatis.annotations.Mapper;
import org.snnu.lier.model.mysql.City;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 17:38
 * @Description:
 */


public interface CityDao {
    public City queryByCityName(String cityName);
    public List<City> queryAll();
    public City queryByCityId(int cityId);
}
