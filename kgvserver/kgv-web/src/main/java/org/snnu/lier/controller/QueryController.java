package org.snnu.lier.controller;




import org.snnu.lier.common.utils.URLUtil;
import org.snnu.lier.model.mysql.*;
import org.snnu.lier.service.*;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/8 16:48
 * @Description:
 */
@Controller
@RequestMapping("/query")
public class QueryController {
    @Resource
    FoodService foodService;

    @Resource
    CityService cityService;

    @Resource
    RegionService regionService;

    @Resource
    RelationService relationService;

    @Resource
    Food food;

    @Resource
    FoodToCity foodToCity;

    @Resource
    CityContainFood cityContainFood;

    @Resource
    RegionContainFood regionContainFood;

    @Resource
    NameMappingService nameMappingService;

    @Resource
    RedisTemplate redisTemplate;
//    @Resource
//    JedisUtil jedisUtil;
    @RequestMapping("/any")
    public String query(@RequestParam("name") String queryString){
        NameMapping nameMapping = nameMappingService.queryByString(queryString);
        if(nameMapping==null){
            return null;
        }
        queryString = URLUtil.getURLEncoderString(queryString);
        String forwardString = "redirect:"+"/query/"+nameMapping.getClazz()+"?name="+queryString;
        return forwardString;
    }


    @RequestMapping("/food")
    @ResponseBody
    public FoodToCity queryByFoodName(@RequestParam("name") String foodName, HttpServletResponse response){
        Food food = foodService.queryByName(foodName);

        if(food!=null){
            List<Relation> relationList = relationService.queryFoodToCityRelation(food.getId());
            List<City> cityList = cityService.queryCityList(relationList);
            foodToCity.setFood(food);
            foodToCity.setCityList(cityList);
//            jedisUtil.setObject("foodToCity",foodToCity,3000);
            response.setHeader("redisKey", "foodToCity");
//            System.out.println(jedisUtil.getObject("foodToCity"));
            return foodToCity;
        }
        return null;
    }

    @RequestMapping("/queryAll")
    @ResponseBody
    public List<Food> queryAll(){

        List<Food> foodList = foodService.queryAll();
        return foodList;
    }

    @RequestMapping("/city")
    @ResponseBody
    public CityContainFood queryByCityName(@RequestParam("name") String cityName,HttpServletResponse response){
        City city = cityService.queryByCityName(cityName);
        city.setHashMap();
        List<Relation> relationList = relationService.queryCityContainFoodRelation(city.getId());
        List<Food> foodList = foodService.queryFoodList(relationList);
        cityContainFood.setCity(city);
        cityContainFood.setFoodList(foodList);
//        jedisUtil.setObject("cityContainFood",cityContainFood,3000);
        response.setHeader("redisKey", "cityContainFood");
        return cityContainFood;
    }

    @RequestMapping("/region")
    @ResponseBody
    public RegionContainFood queryByRegionName(@RequestParam(value = "name") String regionName, HttpServletResponse response){
        Region region = regionService.queryByRegionName(regionName);
        region.setHashMap();

        List<Relation> relationList = relationService.queryRegionContainFoodRelation(region.getRegionId());
        List<Food> foodList = foodService.queryFoodList(relationList);
        regionContainFood.setRegion(region);
        regionContainFood.setFoodList(foodList);
//        jedisUtil.setObject("regionContainFood",regionContainFood,3000);
        response.setHeader("redisKey", "regionContainFood");
        return regionContainFood;
    }
    public static final String VIDEOPATH = "D:\\KNGraph-Visualization\\src\\webapp\\statics\\assets\\base\\media\\video\\";

    @RequestMapping("/playVideo")
    public void playVideo(HttpServletRequest request,HttpServletResponse response, String videoName){
        String path  = VIDEOPATH+videoName;
        File file = new File(path);
        byte[] data;
        try {
            BufferedInputStream in = new BufferedInputStream(new FileInputStream(file));
            BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream(),2*1024);
            response.setContentType("application/mp4");
            data = new byte[in.available()];
            int count = 0;
            while((count = in.read(data,0,8192))!=-1){
                out.write(data,0,count);
            }
            in.close();
            out.flush();
            out.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
