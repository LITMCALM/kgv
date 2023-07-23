package org.snnu.lier.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.snnu.lier.model.mysql.Province;


import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 17:39
 * @Description:
 */

public interface ProvinceDao {
    public Province queryByProvinceName(String provinceName);
    public List<Province> queryAll();
    public Province queryByProvinceId(int provinceId);
}
