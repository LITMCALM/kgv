package org.snnu.lier.model.amqp;

import cn.hutool.core.date.DateTime;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class DownloadRequest implements Serializable {

    private String id;
    private Long userId;
    private String username;
    private int status;
    private Date dateTime;
    private String type;
    private String queryPath;
    private Date updateTime;

}
