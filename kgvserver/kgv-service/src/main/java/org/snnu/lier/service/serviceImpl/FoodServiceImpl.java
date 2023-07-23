package org.snnu.lier.service.serviceImpl;



import org.snnu.lier.mapper.FoodDao;
import org.snnu.lier.model.mysql.Food;
import org.snnu.lier.model.mysql.Relation;
import org.snnu.lier.service.FoodService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 16:54
 * @Description:
 */
@Service
public class FoodServiceImpl implements FoodService {
    @Resource
    FoodDao foodDao;


    public Food queryByName(String foodName) {
        Food food = foodDao.queryFoodByName(foodName);
        food.setHashMap();
        return food;
    }

    public List<Food> queryAll() {
        List<Food> foodList = foodDao.queryAll();
        return foodList;
    }

    public Food queryByFoodId(int foodId) {
        Food food = foodDao.queryByFoodId(foodId);
        return food;
    }



    public List<Food> queryFoodList(List<Relation> relationList) {

        List<Food> foodList = new ArrayList<Food>();

        for(Relation relation : relationList){
            Food food = queryByFoodId(relation.getEntity2Id());
            food.setHashMap();
            foodList.add(food);
        }

        return foodList;
    }
}
