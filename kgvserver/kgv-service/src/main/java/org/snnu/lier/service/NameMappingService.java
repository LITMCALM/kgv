package org.snnu.lier.service;


import org.snnu.lier.model.mysql.NameMapping;

/**
 * @Auther: litm
 * @Date: 2022/3/30 15:47
 * @Description:
 */
public interface NameMappingService {
    NameMapping queryByString(String queryString);
}
