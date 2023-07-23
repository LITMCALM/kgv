package org.snnu.lier.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.snnu.lier.model.mysql.Relation;


import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 14:31
 * @Description:
 */

public interface RelationDao {
    public List<Relation> queryFoodToCityRelation(int foodId);
    public List<Relation> queryCityContainFoodRelation(int cityId);
    public List<Relation> queryRegionContainFoodRelation(int regionId);
    public List<Relation> queryFoodToProvinceRelation(int foodId);
    public List<Relation> queryFoodToRegionRelation(int foodId);
    public List<Relation> queryCityToRegionRelation(int cityId);
    public List<Relation> queryRegionToProvinceRelation(int regionId);
    public List<Relation> queryCountryToCityRelation(int countryId);
}
