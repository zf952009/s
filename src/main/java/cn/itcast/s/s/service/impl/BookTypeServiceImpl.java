package cn.itcast.s.s.service.impl;

import cn.itcast.s.s.bean.BookType;
import cn.itcast.s.s.mapper.BookTypeMapper;
import cn.itcast.s.s.service.BookTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import java.util.List;

@Service("bookTypeService")
@Transactional(rollbackFor = Exception.class)
public class BookTypeServiceImpl implements BookTypeService {

    @Autowired
    @Qualifier("bookTypeMapper")
    private BookTypeMapper bookTypeMapper;

    /**
     * 查询所有
     *
     * @return List
     * @author z
     */
    @Override
    public List<BookType> findAll() {
        List<BookType> all = bookTypeMapper.findAll();
        int size = all.size();
        if (size >= 1) {
            return all;
        }
        return null;
    }

    /**
     * 查询总记录数
     *
     * @author z
     */
    @Override
    public Integer count() {
        return bookTypeMapper.count();
    }

    /**
     * id查询
     *
     * @param id
     * @return
     */
    @Override
    public BookType findByID(Integer id) {
        BookType bookType = (BookType) bookTypeMapper.findByID(id);
        if (!ObjectUtils.isEmpty(bookType)) {
            return bookType;
        }
        return null;
    }

    /**
     * name查询
     *
     * @param name
     * @return
     */
    @Override
    public BookType findByName(String name) {
        return null;
    }

    /**
     * 根据id删除
     *
     * @param id
     */
    @Override
    public void deleteByID(Integer id) {

    }

    /**
     * 根据对象删除
     *
     * @param object
     */
    @Override
    public void deleteByObject(BookType object) {

    }

    /**
     * 单个对象保存
     *
     * @param object
     * @return intager
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = false)
    public Integer saveObject(BookType object) {
        return bookTypeMapper.saveObject(object);
    }

    /**
     * 批量保存
     *
     * @param list
     */
    @Override
    public void saveBatchObject(List<Object> list) {

    }
}
