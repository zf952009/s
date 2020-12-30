package cn.itcast.s.s.mapper;

import cn.itcast.s.s.bean.FileList;
import cn.itcast.s.s.query.QueryMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("fileListMapper")
public interface FileListMapper extends QueryMapper {


    /*
    * 单个对象修改
    * */
    @Update("update tb_file_list set url = #{url} where id=#{id}")
    void update(FileList fileList);



    /**
     * 查询所有
     *
     * @return List
     * @author z
     */
    @Override
    List findAll();

    /**
     * 查询总记录数
     *
     * @author z
     */
    @Override
    @Select("select count(1) from tb_file_list where file_status=0")
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
