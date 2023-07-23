package org.snnu.lier.model.mysql;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Auther: litm
 * @Date: 2022/3/9 16:40
 * @Description:
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Component
public class RegionContainCity {
    private Region region;
    private List<City> cityList;
}
