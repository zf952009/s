package cn.itcast.s.s.test;


import cn.itcast.s.s.bean.FileList;
import cn.itcast.s.s.bean.SplitConfig;
import cn.itcast.s.s.mapper.FileListMapper;
import cn.itcast.s.s.mapper.UserMapper;
import cn.itcast.s.s.service.BookService;
import cn.itcast.s.s.service.FileListService;
import cn.itcast.s.s.service.UserService;
import cn.itcast.s.s.utils.FileMerage;
import cn.itcast.s.s.utils.FileSplit;
import cn.itcast.s.s.utils.FileUtils;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.Properties;

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


    /*
     *
     * 文件合并
     *
     * */

    public void mergeTest(File file) throws IOException {
        //配置文件加载
        Properties properties = new Properties();
        properties.load(new FileReader(file));

        //配置文件对象
        SplitConfig splitConfig = new SplitConfig(properties);

        System.out.println(FileMerage.fileMerage(splitConfig));

    }

    /*
     * 单个文件合并
     *
     * */
    @Test
    public void fileMergeTest1() throws IOException {
        mergeTest(new File("E:\\BaiduNetdiskDownload\\9PartFile\\9.properties"));

        System.out.println(FileMerage.fileMerage(new File("E:\\桌面文件文件夹\\9PartFile\\9.properties")));
    }

    @Test
    public void findAll() throws IOException {
        //System.out.println(bookService.findAll());

        //System.out.println(bookService.count());

        System.out.println(userService.findAll());
        List<FileList> lists = fileListService.findAll();

        System.out.println(lists);

        File file_src = new File("E:\\BaiduNetdiskDownload\\taotao\\9.mp4");
        String filen_ame = FileUtils.subFileName(file_src.getName());
        File file_dir = new File("E:\\BaiduNetdiskDownload\\" + filen_ame + "PartFile");
        String s = FileUtils.subFileName(file_dir.getName());
        System.out.println(s);
        FileSplit.fileSplit(file_src, file_dir);

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
