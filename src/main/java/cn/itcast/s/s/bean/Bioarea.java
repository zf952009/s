package cn.itcast.s.s.bean;


/*
 * 省市区三级bean
 *
 * */
public class Bioarea {

    //省
    private String province;
    //市
    private String city;
    //区
    private String county;


    @Override
    public String toString() {
        return "Bioarea{" +
                "province='" + province + '\'' +
                ", city='" + city + '\'' +
                ", county='" + county + '\'' +
                '}';
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCounty() {
        return county;
    }

    public void setCounty(String county) {
        this.county = county;
    }
}
