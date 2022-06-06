package com.anyue1517.sporty.entity;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

/**
 * 改件信息
 */
@Data
public class RefitCase {

    //id
    private Long id;

    //图片
    private String img;

    //改件名
    private String title;

    //改件类型
    private String body;


    //创建时间
    @TableField(fill = FieldFill.INSERT)
    private LocalDateTime createTime;

    //更新时间
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private LocalDateTime updateTime;

    /*浏览次数*/
    private int viewCount;

}
