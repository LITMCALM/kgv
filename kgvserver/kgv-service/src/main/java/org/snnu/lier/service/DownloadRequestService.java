package org.snnu.lier.service;

import org.snnu.lier.model.amqp.DownloadRequest;

public interface DownloadRequestService {
    void insertOne(DownloadRequest downloadRequest);

    void updateById(DownloadRequest downloadRequest);


    DownloadRequest selectOneById(String id);
}
