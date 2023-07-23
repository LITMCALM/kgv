package org.snnu.lier.common.utils;

import java.util.UUID;

/**
 * @Auther: litm
 * @Date: 2022/3/27 13:34
 * @Description:
 */
public class UniqueIdUtil {

    public static String getUniqueId(){
        return UUID.randomUUID().toString().substring(24);
    }
    public String getUniqueId(int id){
        return null;
    }
    public String getUniqueId(String id){
        return null;
    }
}
