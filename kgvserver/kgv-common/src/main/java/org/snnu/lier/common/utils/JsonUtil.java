package org.snnu.lier.common.utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * @Auther: litm
 * @Date: 2022/3/25 10:24
 * @Description:
 */
public class JsonUtil {
    public static String toJSONString(Object object) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        String jsonString = mapper.writerWithDefaultPrettyPrinter()
                .writeValueAsString(object);
        return jsonString;
    }
}
