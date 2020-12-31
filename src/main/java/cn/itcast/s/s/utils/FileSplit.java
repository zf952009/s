package cn.itcast.s.s.utils;

import cn.itcast.s.s.bean.SplitConfig;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * 文件切割
 * */
public class FileSplit {

    /**
     * 文件切割保存
     *
     * @param file_dir 碎片保存文件夹
     * @param file_src 待切割文件
     */
    public static void fileSplit(File file_src, File file_dir) throws IOException {
        // 功能完整性判断
        // 判断源文件是否存在
        if (!(file_src.exists() && file_src.isFile())) {
            throw new RuntimeException(file_src.getName() + ":::不是正确的文件或文件不存在");
        }
        // 判断碎片文件夹是否存在,如果文件夹不存在就创建碎片文件夹
        if (!file_dir.exists()) {
            file_dir.mkdirs();
        }

        //文件名
        String filename = FileUtils.subFileName(file_src.getName());

        //文件输入流
        FileInputStream fileInputStream = new FileInputStream(file_src);
        //文件输出流
        FileOutputStream fileOutputStream = null;
        int buffer_sizee = FileUtils.BUFFER_SIZE * 20;
        byte[] bytes = new byte[buffer_sizee];
        int len = 0;
        int count = 0;
        //碎片文件保存
        while ((len = fileInputStream.read(bytes)) != -1) {
            fileOutputStream = new FileOutputStream(new File(file_dir, (count++) + ".part"));
            fileOutputStream.write(bytes, 0, len);
            fileOutputStream.flush();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception e) {
                    throw new RuntimeException(e);
                } finally {
                    //输出流关闭
                    fileOutputStream.close();
                }
            }
        }

        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (Exception e) {
                throw new RuntimeException(e);
            } finally {
                //输入流关闭
                fileInputStream.close();
            }
        }

        //碎片文件配置信息保存
        SplitConfig splitConfig = new SplitConfig(".part", file_dir.getAbsolutePath(), file_src.getName(), count, buffer_sizee);
        File fileConfig = new File(file_dir, filename + ".properties");
        splitConfig.ConfigWriter(fileConfig);

    }
}
