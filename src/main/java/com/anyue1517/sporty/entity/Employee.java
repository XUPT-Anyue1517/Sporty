package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 员工信息
 */
@Data
public class Employee {

    //id
    private Integer id;

    //经理：1  、员工 ：0
    private int role;

    //姓名
    private String name;

    //密码
    private String password;

    //身份证号
    private String idCard;

    //电话
    private String phone;

    //性别
    private String sex;

    //薪水
    private BigDecimal salary;

    //入职时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime entryTime;

    //员工状态  1：在职、  0：停职
    private String status;
}
