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
public class Region implements Serializable {
    private int regionId;
    private String name;
    private String briefIntroduction;

    private HashMap<String,String> hashMap = new HashMap<String,String>();

    private String entityClass = "region";

    public void setHashMap(){
        hashMap.put("regionId","ID");
        hashMap.put("name","中文名");
        hashMap.put("briefIntroduction","简介");
        hashMap.put("entityClass","类别");

    }
}
