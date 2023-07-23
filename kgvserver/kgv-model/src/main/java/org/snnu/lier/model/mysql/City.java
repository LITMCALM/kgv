package org.snnu.lier.model.mysql;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.util.HashMap;

/**
 * @Auther: litm
 * @Date: 2022/3/8 16:55
 * @Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class City implements Serializable {
//    city_id
//            city_name
//    brief_introduction
//            alias_name
//    english_name
//            region
//    climate_condition
//            scenic_spots
//    area
//            population
//    province

    private int id;
    private String name;

    private String aliasName;
    private String englishName;
    private String region;
    private String climateCondition;
    private String scenicSpots;
    private float area;
    private float population;
    private String province;
    private String briefIntroduction;

    private HashMap<String,String> hashMap = new HashMap<String,String>();
    private String entityClass = "city";

    public void setHashMap(){
        hashMap.put("id","id");
        hashMap.put("name","中文名");
        hashMap.put("aliasName","别名");
        hashMap.put("englishName","英文名");
        hashMap.put("region","所属地区");
        hashMap.put("climateCondition","气候条件");
        hashMap.put("scenicSpots","景点");
        hashMap.put("area","面积");
        hashMap.put("population","人口");
        hashMap.put("province","所属省份");
        hashMap.put("entityClass","类别");
        hashMap.put("briefIntroduction","城市介绍");


    }
}
