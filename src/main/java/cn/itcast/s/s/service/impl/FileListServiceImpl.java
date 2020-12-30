package cn.itcast.s.s.service.impl;

import cn.itcast.s.s.bean.FileList;
import cn.itcast.s.s.mapper.FileListMapper;
import cn.itcast.s.s.service.FileListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Repository("fileListService")
public class FileListServiceImpl implements FileListService {

    @Autowired
    @Qualifier("fileListMapper")
    private FileListMapper fileListMapper;

    @Override
    public List<FileList> findAll() {
        return fileListMapper.findAll();
    }
}
