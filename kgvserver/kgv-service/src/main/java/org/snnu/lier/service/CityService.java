package org.snnu.lier.service;




import org.snnu.lier.model.mysql.City;
import org.snnu.lier.model.mysql.Relation;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 15:08
 * @Description:
 */
public interface CityService {
     City queryByCityName(String cityName);
     List<City> queryAll();
     City queryByCityId(int cityId);
     List<City> queryCityList(List<Relation> relationList);
}

