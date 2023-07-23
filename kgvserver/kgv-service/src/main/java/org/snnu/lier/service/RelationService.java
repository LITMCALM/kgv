package org.snnu.lier.service;



import org.snnu.lier.model.mysql.Relation;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 15:01
 * @Description:
 */
public interface RelationService {
    List<Relation> queryFoodToCityRelation(int foodId);
    List<Relation> queryCityContainFoodRelation(int cityId);
    List<Relation> queryRegionContainFoodRelation(int regionId);
}
