package org.snnu.lier.service.serviceImpl;



import org.snnu.lier.mapper.NameMappingDao;
import org.snnu.lier.model.mysql.NameMapping;
import org.snnu.lier.service.NameMappingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @Auther: litm
 * @Date: 2022/3/30 15:47
 * @Description:
 */
@Service
public class NameMappingServiceImpl implements NameMappingService {

    @Resource
    NameMappingDao nameMappingDao;

    @Override
    public NameMapping queryByString(String queryString) {
        NameMapping nameMapping = nameMappingDao.queryByString(queryString);
        return nameMapping;
    }
}
