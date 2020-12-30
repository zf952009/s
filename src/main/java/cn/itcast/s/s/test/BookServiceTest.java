package cn.itcast.s.s.test;


import cn.itcast.s.s.bean.FileList;
import cn.itcast.s.s.mapper.FileListMapper;
import cn.itcast.s.s.mapper.UserMapper;
import cn.itcast.s.s.service.BookService;
import cn.itcast.s.s.service.FileListService;
import cn.itcast.s.s.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookServiceTest {

    @Autowired
    @Qualifier("bookService")
    private BookService bookService;

    @Autowired
    @Qualifier("userService")
    private UserService userService;


    @Autowired
    @Qualifier("userMapper")
    private UserMapper userMapper;

    @Autowired
    @Qualifier("fileListMapper")
    private FileListMapper fileListMapper;

    @Autowired
    @Qualifier("fileListService")
    private FileListService fileListService;

    @Test
    public void findAll() {
        //System.out.println(bookService.findAll());

        //System.out.println(bookService.count());

        System.out.println(userService.findAll());
        List<FileList> lists = fileListService.findAll();

        System.out.println(lists);
        /*for (int i = 0; i < lists.size(); i++) {

            FileList fileList = lists.get(i);
            String url = fileList.getUrl();
            String url1 = StringUtils.trimAllWhitespace(url);
            fileList.setUrl(url1);
            lists.set(i, fileList);

            fileListMapper.update(fileList);
            System.out.println(lists);


        }*/

    }

}
