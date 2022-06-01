package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * 用户
 */
@Data
public class User {

    private static final long serialVersionUID = 1L;

    //id
    private Long id;

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

    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
