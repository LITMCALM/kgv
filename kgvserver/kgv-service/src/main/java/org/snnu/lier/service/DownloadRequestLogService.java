package org.snnu.lier.service;

import org.snnu.lier.model.amqp.DownloadRequestLog;

import java.util.List;

public interface DownloadRequestLogService {

    void insertOne(DownloadRequestLog downloadRequestLog);

    void updateById(DownloadRequestLog downloadRequestLog);

    DownloadRequestLog selectOneById(String id);

    DownloadRequestLog selectOneByDownloadRequestId(String id);

    List<DownloadRequestLog> selectListByDownloadRequestId(String id);

    List<DownloadRequestLog> selectByStatus(int status);

    void updateStatusById(DownloadRequestLog downloadRequestLog);

    void updateCountById(DownloadRequestLog downloadRequestLog);
}
