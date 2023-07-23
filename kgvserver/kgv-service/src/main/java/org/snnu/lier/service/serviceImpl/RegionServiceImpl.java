package org.snnu.lier.service.serviceImpl;


import org.snnu.lier.mapper.RegionDao;
import org.snnu.lier.model.mysql.Region;
import org.snnu.lier.model.mysql.Relation;
import org.snnu.lier.service.RegionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/10 08:31
 * @Description:
 */
@Service
public class RegionServiceImpl implements RegionService {
    @Resource
    RegionDao regionDao;
    public Region queryByRegionName(String regionName) {
        Region region = regionDao.queryByRegionName(regionName);
        return region;
    }

    public List<Region> queryAll() {
        List<Region> regionList = regionDao.queryAll();
        return regionList;
    }

    public Region queryByRegionId(int regionId) {
        Region region = regionDao.queryByRegionId(regionId);
        return region;
    }



    public List<Region> queryRegionList(List<Relation> relationList) {
        List<Region> regionList = new ArrayList<Region>();

        for(Relation relation : relationList){
            Region region = queryByRegionId(relation.getEntity2Id());
            regionList.add(region);
        }
        return regionList;
    }
}
