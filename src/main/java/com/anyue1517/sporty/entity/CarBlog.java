package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.time.LocalDateTime;

/**
 * 汽车资讯
 */
@Data
public class CarBlog {

    private static final long serialVersionUID = 1L;

    //id
    private Long id;

    //封面
    private String img;

    //文章名称
    private String name;

    //文章作者
    private String author;

    //文章车辆
    private String car;

    //浏览量
    private String views;

    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;
}
