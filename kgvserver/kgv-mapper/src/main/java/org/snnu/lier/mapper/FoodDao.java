package org.snnu.lier.mapper;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.snnu.lier.model.mysql.Food;

import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 17:03
 * @Description:
 */

public interface FoodDao {
    public Food queryFoodByName(String foodName);
    public List<Food> queryAll();
    public Food queryByFoodId(int foodId);
    public List<Food> fuzzyQueryByFoodName(@Param("foodName") String foodName);
}
