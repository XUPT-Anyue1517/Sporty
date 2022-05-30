package com.anyue1517.sporty.entity;

import lombok.Data;

/**
 * 用户
 */
@Data
public class User {

    //id
    private Integer id;

    //头像
    private String img;

    //用户名
    private String name;

    //电话
    private String phone;

    //身份证号
    private String idCard;

    //邮箱
    private String email;

    //用户密码
    private String password;
}
