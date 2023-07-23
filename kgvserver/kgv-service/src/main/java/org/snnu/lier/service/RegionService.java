package org.snnu.lier.service;




import org.snnu.lier.model.mysql.Region;
import org.snnu.lier.model.mysql.Relation;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/10 08:30
 * @Description:
 */
public interface RegionService {
    Region queryByRegionName(String regionName);
    List<Region> queryAll();
    Region queryByRegionId(int regionId);
    List<Region> queryRegionList(List<Relation> relationList);
}
