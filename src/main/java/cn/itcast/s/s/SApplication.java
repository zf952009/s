package cn.itcast.s.s;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableTransactionManagement
@SpringBootApplication
@MapperScan(basePackages = {"cn.itcast.s.s.mapper"})
public class SApplication {

    public static void main(String[] args) {
        SpringApplication.run(SApplication.class, args);
    }

}
