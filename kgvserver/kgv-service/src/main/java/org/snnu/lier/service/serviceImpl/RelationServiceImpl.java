package org.snnu.lier.service.serviceImpl;


import org.snnu.lier.mapper.RelationDao;
import org.snnu.lier.model.mysql.Relation;
import org.snnu.lier.service.RelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 15:02
 * @Description:
 */
@Service
public class RelationServiceImpl implements RelationService {
    @Resource
    RelationDao relationDao;

    public List<Relation> queryFoodToCityRelation(int foodId) {
        List<Relation> relationList = relationDao.queryFoodToCityRelation(foodId);
        return relationList;
    }

    public List<Relation> queryCityContainFoodRelation(int cityId) {
        List<Relation> relationList = relationDao.queryCityContainFoodRelation(cityId);
        return relationList;
    }

    public List<Relation> queryRegionContainFoodRelation(int regionId) {
        List<Relation> relationList = relationDao.queryRegionContainFoodRelation(regionId);
        return relationList;
    }
}
