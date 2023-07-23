package org.snnu.lier.service.serviceImpl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.snnu.lier.mapper.DownloadRequestDao;
import org.snnu.lier.model.amqp.DownloadRequest;
import org.snnu.lier.service.DownloadRequestService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class DownloadRequestServiceImpl implements DownloadRequestService {

    @Resource
    DownloadRequestDao downloadRequestDao;

    @Override
    public void insertOne(DownloadRequest downloadRequest){
        downloadRequestDao.insert(downloadRequest);
    }

    @Override
    public void updateById(DownloadRequest downloadRequest){
        downloadRequestDao.updateById(downloadRequest);
    }

    @Override
    public DownloadRequest selectOneById(String id){
        QueryWrapper<DownloadRequest> queryWrapper = new QueryWrapper<>();
        queryWrapper.select().eq("id",id);
        return downloadRequestDao.selectOne(queryWrapper);
    }
}
