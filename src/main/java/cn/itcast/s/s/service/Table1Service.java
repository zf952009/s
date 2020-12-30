package cn.itcast.s.s.service;

import cn.itcast.s.s.bean.Table1;

import java.util.List;

public interface Table1Service {

    List<Table1> findAll();

    Table1 findTable1ByID(Integer id);
}
