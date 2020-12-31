package cn.itcast.s.s.bean;

import cn.itcast.s.s.utils.FileUtils;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Value;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Serializable;
import java.util.*;

@Data@Getter@Setter
public class SplitConfig implements Serializable {
    private String splittype;
    private String filepath;
    private String filename;
    private Integer filecount;
    @Value("spring.file.BUFFER_SIZE")
    private Integer buffer_size;

    public SplitConfig(String splittype, String filepath, String filename, Integer filecount, Integer buffer_size) {
        this.splittype = splittype;
        this.filename = filename;
        this.filepath = filepath;
        this.buffer_size = buffer_size;
        this.filecount = filecount;
    }

    public SplitConfig(Properties properties) {
        this.filecount = Integer.parseInt(properties.getProperty("filecount"));
        this.buffer_size = Integer.parseInt(properties.getProperty("buffer_size"));
        this.filepath = properties.getProperty("filepath");
        this.filename = properties.getProperty("filename");
        this.splittype = properties.getProperty("splittype");

    }

    public Map<String, String> getConfig() {
        Map<String, String> map = new LinkedHashMap<>();
        if (this.buffer_size != null) {
            map.put("buffer_size", buffer_size.toString());
        } else {
            //默认缓冲区大小
            map.put("buffer_size", FileUtils.BUFFER_SIZE.toString());
        }
        if (this.filecount != null) {
            map.put("filecount", this.filecount.toString());
        } else {
            map.put("filecount", "0");
        }
        if (this.filename != null || !"".equals(this.filename)) {
            map.put("filename", this.filename);
        } else {
            map.put("filename", "");
        }
        if (this.filepath != null || !"".equals(this.filepath)) {
            map.put("filepath", this.filepath);
        } else {
            map.put("filepath", "");
        }
        if (this.splittype != null || !"".equals(this.splittype)) {
            map.put("splittype", this.splittype);
        } else {
            map.put("splittype", "");
        }
        return map;
    }


    public String ConfigWriter(File file) throws IOException {
        Map<String, String> config = this.getConfig();
        Properties properties = new Properties();
        Iterator<String> iterator = config.keySet().iterator();
        while (iterator.hasNext()) {
            String key = iterator.next();
            String value = config.get(key);
            properties.setProperty(key, value);
        }
        properties.store(new FileWriter(file), filename + " config");
        properties.clone();
        return file.getAbsolutePath();
    }

    @Override
    public String toString() {
        return "SplitConfig:[" +
                "splittype='" + splittype + '\'' +
                ", filepath='" + filepath + '\'' +
                ", filename='" + filename + '\'' +
                ", filacount=" + filecount +
                ", buffer_size=" + buffer_size +
                ']';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof SplitConfig)) {
            return false;
        }
        SplitConfig that = (SplitConfig) o;
        return Objects.equals(splittype, that.splittype) &&
                Objects.equals(filepath, that.filepath) &&
                Objects.equals(filename, that.filename) &&
                Objects.equals(filecount, that.filecount) &&
                Objects.equals(buffer_size, that.buffer_size);
    }

    @Override
    public int hashCode() {
        return Objects.hash(splittype, filepath, filename, filecount, buffer_size);
    }
}
