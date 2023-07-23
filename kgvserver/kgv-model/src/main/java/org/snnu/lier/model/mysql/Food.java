package org.snnu.lier.model.mysql;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.HashMap;

/**
 * @Auther: litm
 * @Date: 2022/3/8 16:54
 * @Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Component
public class Food implements Serializable {
//    food_id
//            chinese_name
//    english_name
//            alias_name
//    place
//            feature
//    classification
//            ingredient
    private int id;
    private String name;
    private String englishName;
    private String aliasName;
    private String place;
    private String feature;
    private String classification;
    private String ingredient;
    private String briefIntroduction;

    private HashMap<String,String> hashMap = new HashMap<String,String>();
    private String entityClass = "food";

    public void setHashMap() {
        hashMap.put("id","id");
        hashMap.put("name","中文名");
        hashMap.put("englishName","英文名");
        hashMap.put("aliasName","别名");
        hashMap.put("place","所属地点");
        hashMap.put("feature","特点");
        hashMap.put("classification","分类");
        hashMap.put("ingredient","原料");
        hashMap.put("briefIntroduction","简介");
        hashMap.put("entityClass","类别");
    }
}
