package org.snnu.lier.service.serviceImpl;

import cn.hutool.core.date.DateTime;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.snnu.lier.mapper.DownloadRequestLogDao;
import org.snnu.lier.model.amqp.DownloadRequestLog;
import org.snnu.lier.service.DownloadRequestLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class DownloadRequestLogServiceImpl implements DownloadRequestLogService {
    @Resource
    DownloadRequestLogDao downloadRequestLogDao;

    @Override
    public void insertOne(DownloadRequestLog downloadRequestLog){
        downloadRequestLogDao.insert(downloadRequestLog);
    }

    @Override
    public void updateById(DownloadRequestLog downloadRequestLog){
        downloadRequestLogDao.updateById(downloadRequestLog);
    }

    @Override
    public DownloadRequestLog selectOneById(String id){
        QueryWrapper<DownloadRequestLog> queryWrapper = new QueryWrapper<>();
        queryWrapper.select().eq("id",id);
        return downloadRequestLogDao.selectOne(queryWrapper);
    }

    @Override
    public DownloadRequestLog selectOneByDownloadRequestId(String id) {
        return null;
    }

    @Override
    public List<DownloadRequestLog> selectListByDownloadRequestId(String id){
        QueryWrapper<DownloadRequestLog> queryWrapper = new QueryWrapper<>();
        queryWrapper.select().eq("download_request_id",id);
        return downloadRequestLogDao.selectList(queryWrapper);
    }

    @Override
    public List<DownloadRequestLog> selectByStatus(int status){
        QueryWrapper<DownloadRequestLog> queryWrapper = new QueryWrapper<>();
        queryWrapper.select().eq("status",status).le("try_time",new DateTime(System.currentTimeMillis()));
        return downloadRequestLogDao.selectList(queryWrapper);
    }

    @Override
    public void updateStatusById(DownloadRequestLog downloadRequestLog){
        downloadRequestLogDao.updateById(downloadRequestLog);
    }

    @Override
    public void updateCountById(DownloadRequestLog downloadRequestLog){
        downloadRequestLogDao.updateById(downloadRequestLog);
    }
}
