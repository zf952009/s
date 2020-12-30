package cn.itcast.s.s.test;


import cn.itcast.s.s.bean.Table1;
import cn.itcast.s.s.service.Table1Service;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class Table1ServiceTest {

    @Autowired
    @Qualifier("table1Service")
    private Table1Service table1Service;

    @Test
    public void findAll() {
        List<Table1> list = table1Service.findAll();
        System.out.println(list);
    }

    @Test
    public void findByID(){
        Table1 table1 = table1Service.findTable1ByID(2);
        System.out.println(table1);
    }
}
