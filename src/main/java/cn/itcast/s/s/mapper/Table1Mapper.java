package cn.itcast.s.s.mapper;

import cn.itcast.s.s.bean.Table1;
import cn.itcast.s.s.query.QueryMapper;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


@Mapper
@Repository("table1Mapper")
public interface Table1Mapper extends QueryMapper {


    List<Table1> findAll();


    Table1 findTable1ByID(Integer id);

    /**
     * 查询总记录数
     *
     * @author z
     */
    @Override
    Integer count();

    /**
     * id查询
     *
     * @param id
     * @return
     */
    @Override
    Object findByID(Integer id);

    /**
     * name查询
     *
     * @param name
     * @return
     */
    @Override
    Object findByName(String name);

    /**
     * 根据id删除
     *
     * @param id
     */
    @Override
    void deleteByID(Integer id);

    /**
     * 根据对象删除
     *
     * @param object
     */
    @Override
    void deleteByObject(Object object);

    /**
     * 单个对象保存
     *
     * @param object
     */
    @Override
    Integer saveObject(Object object);

    /**
     * 批量保存
     *
     * @param list
     */
    @Override
    void saveBatchObject(List<Object> list);
}
