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
 * @Date: 2022/3/10 09:15
 * @Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Component
public class RegionContainFood implements Serializable {
    private Region region;
    private List<Food> foodList;
}
