package org.snnu.lier.model.mysql;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 15:19
 * @Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Component
public class FoodToCity  implements Serializable {
    private Food food;
    private List<City> cityList;

}
