package org.snnu.lier.service;


import org.snnu.lier.model.mysql.Food;
import org.snnu.lier.model.mysql.Relation;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 16:52
 * @Description:
 */
public interface FoodService {
    Food queryByName(String foodName);
    List<Food> queryAll();
    Food queryByFoodId(int foodId);
    List<Food> queryFoodList(List<Relation> relationList);
}
