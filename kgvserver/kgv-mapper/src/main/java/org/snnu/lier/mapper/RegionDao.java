package org.snnu.lier.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.snnu.lier.model.mysql.Region;


import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 17:39
 * @Description:
 */
public interface RegionDao {
    public Region queryByRegionName(String regionName);
    public List<Region> queryAll();
    public Region queryByRegionId(int regionId);
}
