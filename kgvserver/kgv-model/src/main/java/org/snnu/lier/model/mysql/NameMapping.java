package org.snnu.lier.model.mysql;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Component;

/**
 * @Auther: litm
 * @Date: 2022/3/30 15:39
 * @Description:
 */

@NoArgsConstructor
@AllArgsConstructor
@Data
@ToString
@Component
public class NameMapping {
    int id;
    String name;
    String clazz;

}
