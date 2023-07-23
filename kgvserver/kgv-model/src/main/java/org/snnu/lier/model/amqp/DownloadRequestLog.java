package org.snnu.lier.model.amqp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.util.Date;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class DownloadRequestLog implements Serializable {
    private String id;
    private String downloadRequestId;
    //0 消息投递中   1 投递成功   2投递失败
    private Integer status;
    private String routeKey;
    private String exchange;
    private Integer count;
    private Date tryTime;
    private Date createTime;
    private Date updateTime;
    private String direction;
}
