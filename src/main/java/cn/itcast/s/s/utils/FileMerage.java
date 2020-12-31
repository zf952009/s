package cn.itcast.s.s.utils;

import cn.itcast.s.s.bean.SplitConfig;

import java.io.*;
import java.util.LinkedList;
import java.util.Map;
import java.util.Properties;

/*
 * 碎片文件合并
 *
 * 配置文件示例
 * #9.mp4 config
    #Thu Dec 31 21:19:58 CST 2020
    splittype=.part
    filename=9.mp4
    filecount=11
    buffer_size=20971520
    filepath=E\:\\BaiduNetdiskDownload\\9PartFile
     * */
public class FileMerage {

    /*
     * 根据文件合并
     * */
    public static SplitConfig fileMerage(File file) throws IOException {
        Properties properties = new Properties();
        properties.load(new FileReader(file));
        properties.setProperty("filepath", FileUtils.subFilePath(file));
        return fileMerage(new SplitConfig(properties));
    }

    /*
     * 根据配置文件合并
     * */
    public static SplitConfig fileMerage(Properties properties) throws IOException {
        return fileMerage(new SplitConfig(properties));
    }

    /*
     * 根据文件配置对象合并
     * */
    public static SplitConfig fileMerage(SplitConfig splitConfig) throws IOException {

        //源文件名
        String filename = "";
        //碎片文件夹
        String filepath = "";
        //碎片文件后缀
        String splittype = "";
        //碎片文件个数
        Integer filecount = 0;
        //缓冲区大小
        Integer buffer_size = FileUtils.BUFFER_SIZE;
        //碎片配置对象获取信息
        if (splitConfig != null) {
            Map<String, String> config = splitConfig.getConfig();
            filename = config.get("filename");
            filepath = config.get("filepath");
            splittype = config.get("splittype");
            filecount = Integer.parseInt(config.get("filecount"));
            buffer_size = Integer.parseInt(config.get("buffer_size"));
        }

        //创建一个集合存储文件碎片输入流
        LinkedList<FileInputStream> list = new LinkedList<>();
        for (int i = 0; i < filecount; i++) {
            list.addLast(new FileInputStream(filepath + "\\" + i + splittype));
        }
        //缓冲区大小
        byte[] bytes = new byte[buffer_size];
        //文件输出流，文件合并后的文件存储路径
        FileOutputStream fileOutputStream = new FileOutputStream(new
                File(filepath + "\\" + filename));
        for (int i = 0; i < list.size(); i++) {
            FileInputStream fileInputStream = list.get(i);
            int len = 0;
            while ((len = fileInputStream.read(bytes)) != -1) {
                fileOutputStream.write(bytes, 0, len);
                fileOutputStream.flush();
            }
            fileInputStream.close();
        }
        fileOutputStream.close();

        return splitConfig;
    }


    /**
     * * 碎片文件合并
     * Properties properties 配置文件流
     * SplitConfig splitConfig 配置文件信息
     */
    /*public static void fileMerge(SplitConfig splitConfig)
            throws IOException, FileNotFoundException {
//源文件名
        String filename = "";
//碎片文件夹
        String filepath = "";
//碎片文件后缀
        String splittype = "";
//碎片文件个数
        Integer filecount = 0;
//缓冲区大小
        Integer buffer_size = FileUtils.BUFFER_SIZE;
//碎片配置对象获取信息
        if (splitConfig != null) {
            Map<String, String> config = splitConfig.getConfig();
            filename = config.get("filename");
            filepath = config.get("filepath");
            splittype = config.get("splittype");
            filecount = Integer.parseInt(config.get("filecount"));
            buffer_size = Integer.parseInt(config.get("buffer_size"));
        }
//创建一个集合存储文件碎片输入流
        LinkedList<FileInputStream> list = new LinkedList<>();
        for (int i = 0; i < filecount; i++) {
            list.addLast(new FileInputStream(filepath + "\\" + i + splittype));
        }
//缓冲区大小
        byte[] bytes = new byte[buffer_size];
//文件输出流，文件合并后的文件存储路径
        FileOutputStream fileOutputStream = new FileOutputStream(new
                File(filepath + "\\" + filename));
        for (int i = 0; i < list.size(); i++) {
            FileInputStream fileInputStream = list.get(i);
            int len = 0;
            while ((len = fileInputStream.read(bytes)) != -1) {
                fileOutputStream.write(bytes, 0, len);
                fileOutputStream.flush();
            }
            fileInputStream.close();
        }
        fileOutputStream.close();
    }*/
}
