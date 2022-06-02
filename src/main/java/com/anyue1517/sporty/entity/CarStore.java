package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * 汽车4s店信息
 */
@Data
public class CarStore {

    private static final long serialVersionUID = 1L;

    //id
    private Long id;

    //图片
    private String img;

    //4S店名称
    private String name;

    //联系电话
    private String phone;

    //地址
    private String address;

    //关注量
    private String focus;

    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
