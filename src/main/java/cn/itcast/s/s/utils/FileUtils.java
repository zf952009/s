package cn.itcast.s.s.utils;

import java.io.File;

public class FileUtils {

    public static final Integer BUFFER_SIZE = 1048576;

    /**
     * 文件名切割,不带文件后缀
     *
     * @param fileName 文件路径，文件夹会返回文件夹名，文件会返回文件名
     */
    public static String subFileName(String fileName) {
        StringBuffer stringBuffer = new StringBuffer();

        for (int i = 0; i < fileName.length(); i++) {
            char c = fileName.charAt(i);
            stringBuffer.append(c);
            if (c == '.') {
                return stringBuffer.deleteCharAt(i).toString();
            }
        }
        return fileName;
    }

    /*
     * 根据文件截取文件夹路径
     * */

    public static String subFilePath(File file) {

        /*
         * 判断文件是否存在
         * */
        if (!(file.exists() && file.isFile())) {
            throw new RuntimeException(file.getName() + ":::不是正确的文件或文件不存在");
        }
        /*
         * 获取文件绝对路径
         * */
        String filePath = file.getAbsolutePath();
        return subFilePath(file.getAbsolutePath());

    }

    /*
     * 根据文件路径获取文件夹
     * */
    public static String subFilePath(String file_src) {

        File file = new File(file_src);
        /*
         * 判断文件是否存在
         * */
        if (!(file.exists() && file.isFile())) {
            throw new RuntimeException(file.getAbsolutePath() + ":::不是正确的文件或文件不存在");
        }
        return file_src.substring(0, file_src.indexOf("\\" + file.getName()));
    }
}
