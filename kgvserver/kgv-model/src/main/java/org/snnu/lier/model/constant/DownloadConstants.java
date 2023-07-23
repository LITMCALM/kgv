package org.snnu.lier.model.constant;

public class DownloadConstants {
    public static final Integer DELIVERING = 0;//消息投递中
    public static final Integer SUCCESS = 1;//消息投递成功
    public static final Integer FAILURE = 2;//消息投递失败
    public static final Integer MAX_TRY_COUNT = 3;//最大重试次数
    public static final Integer MSG_TIMEOUT = 1;//消息超时时间
    public static final String DOWNLOAD_QUEUE_NAME = "lie.download.queue";
    public static final String DOWNLOAD_EXCHANGE_NAME = "lie.download.exchange";
    public static final String DOWNLOAD_ROUTING_KEY_NAME = "lie.download.routing.key";



    public static final String DOWNLOAD_COMPLETE_QUEUE_NAME="lie.download.complete.queue";
    public static final String DOWNLOAD_COMPLETE_EXCHANGE_NAME="lie.download.complete.exchange";
    public static final String DOWNLOAD_COMPLETE_ROUTING_KEY_NAME = "lie.download.complete.routing.key";
    public static final String MSG_KGV_TO_FS = "KGV->FILE_SERVER";
    public static final String MSG_FS_TO_KGV = "FILE_SERVER->KGV";
}
