package cn.itcast.s.s.service.impl;

import cn.itcast.s.s.bean.Table1;
import cn.itcast.s.s.mapper.Table1Mapper;
import cn.itcast.s.s.service.Table1Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service("table1Service")
@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, readOnly = false)
public class Table1ServiceImpl implements Table1Service {

    @Autowired
    @Qualifier("table1Mapper")
    private Table1Mapper table1Mapper;


    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public List<Table1> findAll() {

        List<Table1> list = table1Mapper.findAll();
        if (list.size()<=0){
            return null;
        }else {
            return list;
        }

    }

    @Override
    public Table1 findTable1ByID(Integer id) {
        return table1Mapper.findTable1ByID(id);
    }
}
