package cn.itcast.s.s.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/*
 * 用户登录信息
 * */
@Getter
@Setter
@ToString
public class UserLogin {

    private String userName;
    private String userPassword;
    /*
     * 用户输入的token
     * */
    private String toKen;
    /*
     * 浏览器存储的token
     * */
    private String userToken;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getToKen() {
        return toKen;
    }

    public void setToKen(String toKen) {
        this.toKen = toKen;
    }

    public String getUserToken() {
        return userToken;
    }

    public void setUserToken(String userToken) {
        this.userToken = userToken;
    }
}
