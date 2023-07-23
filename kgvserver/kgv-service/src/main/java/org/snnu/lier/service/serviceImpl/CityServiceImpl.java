package org.snnu.lier.service.serviceImpl;



import org.snnu.lier.mapper.CityDao;
import org.snnu.lier.model.mysql.City;
import org.snnu.lier.model.mysql.Relation;
import org.snnu.lier.service.CityService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 15:09
 * @Description:
 */
@Service
public class CityServiceImpl implements CityService {
    @Resource
    CityDao cityDao;

    public City queryByCityName(String cityName) {
        City city = cityDao.queryByCityName(cityName);
        city.setHashMap();
        return city;
    }

    public List<City> queryAll() {
        return null;
    }

    public City queryByCityId(int cityId) {

        City city = cityDao.queryByCityId(cityId);
        return city;
    }




    public List<City> queryCityList(List<Relation> relationList){

        List<City> cityList = new ArrayList<City>();

        for(Relation relation : relationList){
            City city = queryByCityId(relation.getEntity2Id());
            city.setHashMap();
            cityList.add(city);
        }

        return cityList;
    }
}
