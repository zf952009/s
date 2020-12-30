package cn.itcast.s.s.service.impl;

import cn.itcast.s.s.bean.Book;
import cn.itcast.s.s.mapper.BookMapper;
import cn.itcast.s.s.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.ObjectUtils;

import java.util.List;

@Service("bookService")
@Transactional(rollbackFor = Exception.class, propagation = Propagation.REQUIRED, readOnly = false)
public class BookServiceImpl implements BookService {

    @Autowired
    @Qualifier("bookMapper")
    private BookMapper bookMapper;

    /**
     * 查询所有
     *
     * @return List
     * @author z
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public List findAll() {
        List<Book> all = bookMapper.findAll();
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
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public Integer count() {
        Integer count = bookMapper.count();
        if (!ObjectUtils.isEmpty(count)) {
            return count;
        }
        return -1;
    }

    /**
     * id查询
     *
     * @param id
     * @return
     */
    @Override
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public Book findByID(Integer id) {
        Book book = (Book) bookMapper.findByID(id);
        if (!ObjectUtils.isEmpty(book)) {
            return book;
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
    @Transactional(propagation = Propagation.REQUIRED, readOnly = true)
    public List<Book> findByName(String name) {
        List<Book> list = (List<Book>) bookMapper.findByName(name);
        int size = list.size();
        if (size >= 1) {
            return list;
        }
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
    public void deleteByObject(Object object) {

    }

    /**
     * 单个对象保存
     *
     * @param object
     */
    @Override
    public Integer saveObject(Book object) {
        return 1;
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
